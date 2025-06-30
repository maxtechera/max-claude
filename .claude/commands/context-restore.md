# /context-restore - Seamless Project State Restoration

Rapidly restore work context when switching between projects, clients, or work sessions.

## Core Function
- **Git intelligence**: Current branch + recent commits + uncommitted changes
- **File state**: Recently edited files + open tabs simulation  
- **Mental model**: Last actions + next steps + blockers
- **Client context**: Project conventions + coding standards + requirements

## Context Restoration Modes

### --project [name] (Switch to Specific Project)
**Purpose**: Switch to different project with full context restoration
**Actions**:
- Load project-specific CLAUDE.md and conventions
- Show git status + recent commits + branch context  
- Display recently modified files and next actions
- Restore project-specific standards and patterns

### --client [name] (Switch to Client Work)
**Purpose**: Context switch to client project with standards
**Actions**:
- Load client coding standards and requirements
- Show Jira/GitHub issues and current sprint
- Display project architecture and key patterns
- Set up client-specific tools and workflows

### --session (Restore from Checkpoint)
**Purpose**: Pick up where you left off from previous session
**Actions**:
- Load session checkpoint from ~/.claude/checkpoints/
- Restore git state and uncommitted changes
- Show interrupted work and next planned actions
- Resume in-progress tasks and mental context

## Example Usage
```bash
/context-restore --project theanswer           # Switch to CTO work
/context-restore --client lastrev             # Switch to client project  
/context-restore --session                    # Resume from checkpoint
/context-restore --quick personal-site        # Quick context without deep dive
```

## Context Display Format
```
🔄 CONTEXT RESTORED: TheAnswer Platform

📂 PROJECT STATE
Repository: /Users/max/dev/theanswer/platform
Branch: feature/user-dashboard (ahead 3 commits)
Last work: 2 hours ago
Uncommitted: 4 files changed, 127 insertions

📋 RECENT ACTIVITY  
✓ Implemented user authentication flow
✓ Added dashboard layout components
🔄 Working on: Real-time data integration
⏭️ Next: Add WebSocket connection for live updates
⚠️ Blocker: API rate limiting needs resolution

🛠️ PROJECT CONTEXT
Stack: React + TypeScript + Node.js + PostgreSQL
Patterns: Custom hooks for API calls, Context for auth
Standards: ESLint + Prettier, Jest for testing
Architecture: Microservices with event bus

📝 MENTAL MODEL
Problem: Users need real-time updates on dashboard
Approach: WebSocket connection with auth middleware  
Progress: Auth working, UI ready, need backend integration
Decision: Use Socket.io for simplicity over raw WebSocket

⚡ ENERGY MATCH
Current energy: HIGH → Perfect for complex WebSocket integration
Estimated time: 2-3 hours for complete implementation
Fallback tasks: Write tests, update documentation
```

## Features

### Smart Context Detection
- **Git intelligence**: Analyze commits to understand current work
- **File patterns**: Identify recently modified files and their relationships
- **Dependency mapping**: Show how current work affects other parts
- **Issue tracking**: Connect git commits to Jira/Linear issues

### Client-Specific Context  
- **Coding standards**: Load client style guides and linting rules
- **Architecture patterns**: Recall project-specific conventions
- **Communication style**: Adjust to client preferences
- **Delivery expectations**: Timeline and quality requirements

### Knowledge Integration
- **Previous solutions**: "You solved similar issue in [project] using [approach]"
- **Pattern library**: Available reusable components and utilities
- **Learning history**: Previous debugging sessions and their outcomes
- **Content opportunities**: Teachable moments from current work

### Momentum Preservation
- **Energy context**: Match current energy level to optimal tasks
- **Time awareness**: How much focused time is available  
- **Interruption planning**: Prepare for context switches
- **Progress tracking**: Clear sense of advancement

## Integration Points

### With Other Commands
- **Before switching**: `/session-checkpoint` to save current state
- **After restoring**: `/energy-match` to optimize task selection  
- **During work**: `/knowledge-search` to find relevant solutions
- **On completion**: `/knowledge-capture` to document learnings

### With External Tools
- **Git**: Status, log, diff, and branch information
- **Jira/Linear**: Issue context and sprint planning
- **IDE**: Recently opened files and workspace state
- **Documentation**: Project README and architecture docs

### Cross-Project Intelligence
- **Pattern application**: Solutions from one project applied to another
- **Learning transfer**: Debugging approaches across different stacks
- **Client insights**: Best practices shared between projects
- **Content extraction**: Tutorial ideas from problem-solving

## State Management
- **Checkpoints**: Automatic state saving before major switches
- **Session bridge**: Maintain context across terminal sessions  
- **Recovery**: Restore from failed or interrupted work sessions
- **History**: Track context switches and productivity patterns

This command transforms context switching from a productivity killer into a seamless workflow enhancement, preserving the mental model and momentum that solopreneur engineers need to manage multiple streams of work effectively.