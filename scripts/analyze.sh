#!/bin/bash

# analyze.sh - Complete Bible verse analysis pipeline
# Combines study.sh (generates JSON analysis) and verse-to-readme.sh (creates README)
# Usage: ./analyze.sh MT 1 1

set -e

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
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

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}Bible Verse Analysis Pipeline${NC}"
echo -e "${BLUE}Book: $BOOK_CODE | Chapter: $CHAPTER | Verse: $VERSE${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Step 1: Run study.sh to generate JSON analysis files
echo -e "${YELLOW}Step 1: Analyzing verse with llm-mar agents...${NC}"
echo ""

if [[ ! -f "$SCRIPT_DIR/study.sh" ]]; then
    echo -e "${RED}Error: study.sh not found${NC}"
    exit 1
fi

"$SCRIPT_DIR/study.sh" "$BOOK_CODE" "$CHAPTER" "$VERSE"

if [[ $? -ne 0 ]]; then
    echo -e "${RED}Error: Study analysis failed${NC}"
    exit 1
fi

echo ""
echo -e "${GREEN}✓ Analysis complete${NC}"
echo ""

# Step 2: Run verse-to-readme.sh to generate README.md
echo -e "${YELLOW}Step 2: Generating README.md from analysis...${NC}"
echo ""

if [[ ! -f "$SCRIPT_DIR/verse-to-readme.sh" ]]; then
    echo -e "${RED}Error: verse-to-readme.sh not found${NC}"
    exit 1
fi

"$SCRIPT_DIR/verse-to-readme.sh" "$BOOK_CODE" "$CHAPTER" "$VERSE"

if [[ $? -ne 0 ]]; then
    echo -e "${RED}Error: README generation failed${NC}"
    exit 1
fi

echo ""

# Final summary
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✓ Pipeline complete!${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
