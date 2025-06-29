#!/bin/bash
# Configuration Sync - Bidirectional sync between project and ~/.claude

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

CLAUDE_DIR="$HOME/.claude"
PROJECT_CLAUDE_DIR=".claude"
BACKUP_DIR="$CLAUDE_DIR/backups/sync_$(date +%Y%m%d_%H%M%S)"

usage() {
    echo -e "${BLUE}Configuration Sync Tool${NC}"
    echo ""
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --from-home     Copy ~/.claude changes back to project"
    echo "  --to-home       Push project changes to ~/.claude"
    echo "  --diff          Show differences without syncing"
    echo "  --backup-only   Create backup without syncing"
    echo "  --preview       Show what would be synced"
    echo ""
    echo "Examples:"
    echo "  $0 --diff                 # See what's different"
    echo "  $0 --from-home --preview  # Preview bringing changes from ~/.claude"
    echo "  $0 --to-home             # Push project changes to home"
}

create_backup() {
    if [ -d "$CLAUDE_DIR" ]; then
        echo -e "${YELLOW}💾 Creating backup...${NC}"
        mkdir -p "$BACKUP_DIR"
        cp -r "$CLAUDE_DIR"/* "$BACKUP_DIR/" 2>/dev/null || true
        echo -e "${GREEN}✅ Backup created: $BACKUP_DIR${NC}"
    fi
}

show_diff() {
    echo -e "${YELLOW}🔍 Configuration differences:${NC}"
    echo ""
    
    if [ -d "$CLAUDE_DIR" ] && [ -d "$PROJECT_CLAUDE_DIR" ]; then
        echo "Files only in ~/.claude:"
        diff -r "$PROJECT_CLAUDE_DIR" "$CLAUDE_DIR" | grep "Only in $CLAUDE_DIR" | head -10 || echo "  (none)"
        
        echo ""
        echo "Files only in project:"
        diff -r "$PROJECT_CLAUDE_DIR" "$CLAUDE_DIR" | grep "Only in $PROJECT_CLAUDE_DIR" | head -10 || echo "  (none)"
        
        echo ""
        echo "Modified files:"
        diff -r "$PROJECT_CLAUDE_DIR" "$CLAUDE_DIR" | grep "^diff" | head -10 || echo "  (none)"
    else
        echo "One of the directories doesn't exist"
    fi
}

sync_from_home() {
    local preview=$1
    
    echo -e "${BLUE}📥 Syncing FROM ~/.claude TO project${NC}"
    
    if [ ! -d "$CLAUDE_DIR" ]; then
        echo -e "${RED}❌ ~/.claude directory not found${NC}"
        exit 1
    fi
    
    if [ "$preview" = "true" ]; then
        echo -e "${YELLOW}Preview mode - no changes will be made${NC}"
        echo ""
        echo "Would copy these files from ~/.claude to project:"
        find "$CLAUDE_DIR" -type f | sed "s|$CLAUDE_DIR|$PROJECT_CLAUDE_DIR|" | head -20
        return
    fi
    
    # Create backup first
    if [ -d "$PROJECT_CLAUDE_DIR" ]; then
        cp -r "$PROJECT_CLAUDE_DIR" "${PROJECT_CLAUDE_DIR}.backup.$(date +%Y%m%d_%H%M%S)"
    fi
    
    # Sync from home to project
    mkdir -p "$PROJECT_CLAUDE_DIR"
    cp -r "$CLAUDE_DIR"/* "$PROJECT_CLAUDE_DIR/"
    
    echo -e "${GREEN}✅ Synced configuration from ~/.claude to project${NC}"
    echo -e "${BLUE}💡 Don't forget to commit these changes to git${NC}"
}

sync_to_home() {
    local preview=$1
    
    echo -e "${BLUE}📤 Syncing FROM project TO ~/.claude${NC}"
    
    if [ ! -d "$PROJECT_CLAUDE_DIR" ]; then
        echo -e "${RED}❌ .claude directory not found in project${NC}"
        exit 1
    fi
    
    if [ "$preview" = "true" ]; then
        echo -e "${YELLOW}Preview mode - no changes will be made${NC}"
        echo ""
        echo "Would copy these files from project to ~/.claude:"
        find "$PROJECT_CLAUDE_DIR" -type f | sed "s|$PROJECT_CLAUDE_DIR|$CLAUDE_DIR|" | head -20
        return
    fi
    
    # Create backup first
    create_backup
    
    # Sync from project to home
    mkdir -p "$CLAUDE_DIR"
    cp -r "$PROJECT_CLAUDE_DIR"/* "$CLAUDE_DIR/"
    
    # Make scripts executable
    find "$CLAUDE_DIR" -name "*.sh" -exec chmod +x {} \;
    
    echo -e "${GREEN}✅ Synced configuration from project to ~/.claude${NC}"
}

# Parse arguments
PREVIEW=false
ACTION=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --from-home)
            ACTION="from_home"
            shift
            ;;
        --to-home)
            ACTION="to_home"
            shift
            ;;
        --diff)
            ACTION="diff"
            shift
            ;;
        --backup-only)
            ACTION="backup"
            shift
            ;;
        --preview)
            PREVIEW=true
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            usage
            exit 1
            ;;
    esac
done

# Execute action
case $ACTION in
    "from_home")
        sync_from_home $PREVIEW
        ;;
    "to_home")
        sync_to_home $PREVIEW
        ;;
    "diff")
        show_diff
        ;;
    "backup")
        create_backup
        ;;
    "")
        echo -e "${YELLOW}No action specified${NC}"
        usage
        ;;
    *)
        echo -e "${RED}Invalid action: $ACTION${NC}"
        usage
        exit 1
        ;;
esac