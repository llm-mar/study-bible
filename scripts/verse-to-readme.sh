#!/bin/bash

# verse-to-readme.sh - Transform Bible verse analysis into README.md
# Usage: ./verse-to-readme.sh MT 1 1

set -e

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
STUDY_DIR="$PROJECT_ROOT/study-bible"
ABBREVIATION_FILE="$STUDY_DIR/abbreviation.json"

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

# Construct the verse directory path
VERSE_DIR="$STUDY_DIR/$BOOK_NAME/$CHAPTER/$VERSE"

# Check if the verse directory exists
if [[ ! -d "$VERSE_DIR" ]]; then
    echo -e "${RED}Error: Verse directory not found at $VERSE_DIR${NC}"
    exit 1
fi

# Check if raw.json exists
if [[ ! -f "$VERSE_DIR/raw.json" ]]; then
    echo -e "${RED}Error: raw.json not found at $VERSE_DIR/raw.json${NC}"
    exit 1
fi

# Create the README.md file path
README_FILE="$VERSE_DIR/README.md"

# Start building the README content
cat > "$README_FILE" << 'EOF'
# Bible Verse Analysis

EOF

# Helper function to format JSON content as Markdown
format_json_section() {
    local file_path="$1"
    local section_name="$2"
    
    if [[ ! -f "$file_path" ]]; then
        return
    fi
    
    echo "## $section_name" >> "$README_FILE"
    echo "" >> "$README_FILE"
    
    # Convert JSON to formatted markdown using Python
    python3 -c "
import json
import sys

try:
    with open('$file_path', 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    def format_table(items, columns):
        \"\"\"Create a markdown table from list of dicts\"\"\"
        result = []
        
        # Header
        header = '| ' + ' | '.join(columns) + ' |'
        separator = '|' + '|'.join([' --- ' for _ in columns]) + '|'
        result.append(header)
        result.append(separator)
        
        # Rows - no truncation
        for item in items:
            row_vals = []
            for col in columns:
                val = item.get(col, '')
                val_str = str(val)
                # Escape pipes in content
                val_str = val_str.replace('|', r'\|')
                row_vals.append(val_str)
            row = '| ' + ' | '.join(row_vals) + ' |'
            result.append(row)
        
        return result
    
    def is_uniform_list(items):
        \"\"\"Check if list items have similar structure\"\"\"
        if not items or not isinstance(items[0], dict):
            return False
        
        if len(items) < 2:
            return True
        
        # Get keys from first item
        first_keys = set(items[0].keys())
        
        # Check if all items have same keys (approximately)
        for item in items[1:]:
            if not isinstance(item, dict):
                return False
            item_keys = set(item.keys())
            # Allow if keys are the same or very similar
            if item_keys != first_keys:
                return False
        
        return True
    
    def format_items(items, indent=0):
        result = []
        prefix = '  ' * indent
        
        if isinstance(items, list):
            if len(items) == 0:
                return result
            
            # Check if this should be a table (list of dicts with same structure)
            if is_uniform_list(items):
                columns = list(items[0].keys())
                # Skip table formatting for very nested structures
                table_lines = format_table(items, columns)
                for line in table_lines:
                    result.append(line)
            else:
                # Regular list formatting for mixed or non-dict items
                for idx, item in enumerate(items):
                    if isinstance(item, dict):
                        for k, v in item.items():
                            if isinstance(v, (list, dict)):
                                result.append(prefix + f'**{k}:**')
                                result.extend(format_items(v, indent + 1))
                            else:
                                # Clean up long strings
                                v_str = str(v)
                                if len(v_str) > 120:
                                    result.append(prefix + f'- **{k}:** {v_str}')
                                else:
                                    result.append(prefix + f'- **{k}:** {v_str}')
                        if idx < len(items) - 1:
                            result.append('')
                    else:
                        result.append(prefix + f'- {item}')
        elif isinstance(items, dict):
            # For dicts, format as bullet list (not table)
            for k, v in items.items():
                if isinstance(v, list):
                    # Only create table if list is uniform and not too deeply nested
                    if is_uniform_list(v) and indent < 1:
                        result.append(prefix + f'**{k}:**')
                        result.append('')
                        result.extend(format_items(v, indent))
                        result.append('')
                    else:
                        result.append(prefix + f'**{k}:**')
                        result.extend(format_items(v, indent + 1))
                elif isinstance(v, dict):
                    result.append(prefix + f'**{k}:**')
                    result.extend(format_items(v, indent + 1))
                else:
                    v_str = str(v)
                    result.append(prefix + f'- **{k}:** {v_str}')
        return result
    
    # Check if data is empty
    has_content = False
    for key, value in data.items():
        if isinstance(value, list) and len(value) == 0:
            continue
        if isinstance(value, dict) and len(value) == 0:
            continue
        has_content = True
        
    if not has_content:
        print('*No data available*')
        print()
    else:
        for key, value in data.items():
            # Skip empty lists
            if isinstance(value, list) and len(value) == 0:
                continue
            # Skip empty dicts
            if isinstance(value, dict) and len(value) == 0:
                continue
                
            print(f'**{key}:**')
            print()
            if isinstance(value, (list, dict)):
                lines = format_items(value)
                for line in lines:
                    print(line)
            else:
                print(f'- {value}')
            print()
        
except json.JSONDecodeError:
    print('Could not parse JSON')
except Exception as e:
    print(f'Error: {e}')
" >> "$README_FILE"
    
    echo "" >> "$README_FILE"
}

# Add verse reference at the top
echo "## Verse Reference" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "**$BOOK_NAME $CHAPTER:$VERSE**" >> "$README_FILE"
echo "" >> "$README_FILE"

# Process raw.json first (verse text)
if [[ -f "$VERSE_DIR/raw.json" ]]; then
    echo "## Raw Text" >> "$README_FILE"
    echo "" >> "$README_FILE"
    
    VERSE_TEXT=$(python3 -c "import json; data = json.load(open('$VERSE_DIR/raw.json')); print(data.get('text', ''))" 2>/dev/null || echo "")
    
    if [[ -n "$VERSE_TEXT" ]]; then
        echo "> $VERSE_TEXT" >> "$README_FILE"
        echo "" >> "$README_FILE"
    fi
fi

# Process each analysis JSON file
declare -a ANALYSIS_FILES=(
    "teaching"
    "question"
    "author"
    "audience"
    "noun"
    "verb"
    "phrase"
    "translation"
    "semiotics"
)

for file_base in "${ANALYSIS_FILES[@]}"; do
    file_path="$VERSE_DIR/${file_base}.json"
    
    if [[ -f "$file_path" ]]; then
        # Convert file base name to title case
        title="${file_base^} Analysis"
        format_json_section "$file_path" "$title"
    fi
done

# Add metadata footer
echo "---" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "**Generated:** $(date)" >> "$README_FILE"
echo "**Source Directory:** $VERSE_DIR" >> "$README_FILE"

echo -e "${GREEN}✓ README.md generated successfully${NC}"
echo -e "${GREEN}✓ Location: $README_FILE${NC}"
