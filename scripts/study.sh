#!/bin/bash

# study.sh - Analyze Bible verses using llm-mar agents
# Usage: ./study.sh MT 1 1

set -e

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
AGENTS_DIR="$PROJECT_ROOT/agents"
STUDY_DIR="$PROJECT_ROOT/study-bible"
ABBREVIATION_FILE="$STUDY_DIR/abbreviation.json"

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Validate arguments
if [[ $# -ne 3 ]]; then
    echo -e "${RED}Error: Invalid number of arguments${NC}"
    echo "Usage: $0 BOOK CHAPTER VERSE"
    echo "Example: $0 MT 1 1"
    exit 1
fi

BOOK_CODE="$1"
CHAPTER="$2"
VERSE="$3"

# Load abbreviation mapping
if [[ ! -f "$ABBREVIATION_FILE" ]]; then
    echo -e "${RED}Error: Abbreviation file not found at $ABBREVIATION_FILE${NC}"
    exit 1
fi

# Get the full book name from the abbreviation
BOOK_NAME=$(grep -o "\"$BOOK_CODE\": \"[^\"]*" "$ABBREVIATION_FILE" | cut -d'"' -f4)

if [[ -z "$BOOK_NAME" ]]; then
    echo -e "${RED}Error: Unknown book code '$BOOK_CODE'${NC}"
    exit 1
fi

# Construct the path to the raw.json file
RAW_JSON_PATH="$STUDY_DIR/$BOOK_NAME/$CHAPTER/$VERSE/raw.json"

# Check if the raw.json file exists
if [[ ! -f "$RAW_JSON_PATH" ]]; then
    echo -e "${RED}Error: Verse file not found at $RAW_JSON_PATH${NC}"
    exit 1
fi

# Read the verse text from raw.json
VERSE_TEXT=$(python3 -c "import json; data = json.load(open('$RAW_JSON_PATH')); print(data.get('text', ''))" 2>/dev/null || echo "")

if [[ -z "$VERSE_TEXT" ]]; then
    echo -e "${YELLOW}Warning: Verse text is empty at $RAW_JSON_PATH${NC}"
fi

# Function to run an agent and extract output
run_agent() {
    local agent_file="$1"
    local agent_name=$(basename "$agent_file" .yaml)
    
    echo -e "${YELLOW}Running agent: $agent_name${NC}"
    
    # Run the agent and capture output
    local result=$(llm-mar run "$agent_file" --input "$VERSE_TEXT" 2>/dev/null || echo "{}")
    
    # Add to output
    OUTPUT=$(echo "$OUTPUT" | sed "s/\"analysis\": {}/\"analysis\": { \"$agent_name\": $result }/")
}

# Ensure output directory exists
OUTPUT_DIR="$STUDY_DIR/$BOOK_NAME/$CHAPTER/$VERSE"
if [[ ! -d "$OUTPUT_DIR" ]]; then
    mkdir -p "$OUTPUT_DIR"
fi

# Run all available agents
if [[ ! -d "$AGENTS_DIR" ]]; then
    echo -e "${RED}Error: Agents directory not found at $AGENTS_DIR${NC}"
    exit 1
fi

for agent_file in "$AGENTS_DIR"/*.yaml; do
    if [[ ! -f "$agent_file" ]]; then
        continue
    fi
    
    agent_name=$(basename "$agent_file" .yaml)
    echo -e "${GREEN}Analyzing with $agent_name agent...${NC}"
    
    # Run the agent and capture output
    result=$(llm-mar run "$agent_file" --input "$VERSE_TEXT" 2>/dev/null || echo "{}")
    
    # Extract just the response field if it exists, otherwise use the whole result
    response=$(echo "$result" | python3 -c "import sys, json; data = json.load(sys.stdin); print(json.dumps(data.get('response', data), ensure_ascii=False, indent=2))" 2>/dev/null || echo "$result")
    
    # Save individual agent result to file with proper UTF-8 encoding
    OUTPUT_FILE="$OUTPUT_DIR/${agent_name}.json"
    echo "$response" | python3 -c "import sys; sys.stdout.write(sys.stdin.read())" > "$OUTPUT_FILE" 2>/dev/null || echo "$response" > "$OUTPUT_FILE"
    echo -e "${GREEN}✓ Saved to ${agent_name}.json${NC}"
done

echo -e "${GREEN}✓ All analyses complete${NC}"
echo -e "${GREEN}✓ Results saved to $OUTPUT_DIR${NC}"
