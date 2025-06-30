# /session-checkpoint - Save Current Work State

Save recoverable checkpoint of current work state for seamless project switching and interruption recovery.

## Core Function
- **State capture**: Git status, uncommitted changes, working files
- **Context preservation**: Mental model, next actions, blockers
- **Cross-terminal sync**: Session bridge for continuity
- **Auto-triggers**: Before risky operations or context switches

## Checkpoint Modes

### --auto (Automatic Checkpoint)
**Purpose**: Auto-triggered before context switches or risky operations
**Captures**:
- Git state (branch, uncommitted changes, recent commits)
- Recently modified files and their relationships
- Current todos and next planned actions
- Mental context (current problem, approach, progress)

### --manual [message] (Manual Checkpoint) 
**Purpose**: User-triggered checkpoint with optional description
**Usage**: Before experimental changes, major refactoring, or end of session
**Process**:
- Prompt for checkpoint description if not provided
- Capture full context including reasoning for checkpoint
- Note any specific risks or concerns
- Mark as user-initiated for priority recovery

### --switch [project] (Context Switch Checkpoint)
**Purpose**: Specialized checkpoint for project switching
**Process**:
- Save current project state with switch context
- Prepare handoff information for project resumption
- Update session bridge with cross-project intelligence
- Queue optimal restoration context for return

## Checkpoint Contents

### Git Intelligence
```
📂 GIT STATE CAPTURED
Repository: /Users/max/dev/theanswer/platform
Branch: feature/user-auth (ahead 2 commits)
Uncommitted: 6 files changed, 89 insertions, 12 deletions
Last commit: "Add login validation logic" (15 minutes ago)
Stash available: No

🔄 RECENT ACTIVITY
✓ Implemented JWT token validation
✓ Added password strength checking  
🔄 Working on: OAuth integration with Google
⏭️ Next: Test OAuth flow and error handling
```

### Mental Model Preservation
```
🧠 MENTAL CONTEXT
Problem: Users need social login options
Approach: OAuth 2.0 with Google provider
Progress: 70% complete - auth flow working, need error handling
Decision: Using Passport.js over custom implementation
Blocker: Google OAuth app approval pending

💡 KEY INSIGHTS
- JWT validation pattern reusable across projects
- Password validation library works well
- OAuth error handling needs comprehensive testing
- Consider adding Facebook/GitHub providers later

🎯 IMMEDIATE NEXT STEPS
1. Test OAuth error scenarios (invalid tokens, expired sessions)
2. Add user profile data handling from Google
3. Update database schema for social login fields
4. Write integration tests for auth flows
```

### File Context
```
📄 WORKING FILES
Primary: 
- src/auth/oauth.js (new, 145 lines)
- src/middleware/auth.js (modified, +23 lines)
- src/routes/auth.js (modified, +15 lines)

Related:
- config/passport.js (modified, +45 lines)
- tests/auth.test.js (needs update)
- package.json (added passport dependencies)

🔗 DEPENDENCIES
- passport: New OAuth integration
- jsonwebtoken: Enhanced token handling
- bcrypt: Password validation upgrade
```

## Auto-Trigger Conditions

### Before Risky Operations
- `npm install` → Package changes could break build
- Database migrations → Schema changes need rollback option
- Major refactoring → Code changes could introduce bugs
- `git rebase`/`git merge` → Potential conflicts need recovery

### Context Switch Detection
- Different project directory detected
- Git branch switch to different feature
- Linear/Jira context change (different issue)
- Time gap >2 hours since last activity

### Session Boundaries
- Terminal/IDE closing detected
- End of work day (energy level drop)
- Manual session end command
- Multiple project handoffs in sequence

## Integration Features

### Session Bridge Updates
```yaml
Current_Session:
  project: "TheAnswer Platform"
  phase: "OAuth Integration"
  energy: "Medium (post-lunch)"
  momentum: "High - good progress on auth"
  
Cross_Project_Intelligence:
  patterns_available:
    - "JWT validation from LastRev project"
    - "OAuth error handling from previous client work"
  content_opportunities:
    - "OAuth integration tutorial from current work"
  knowledge_gained:
    - "Passport.js best practices"
    - "Google OAuth approval process insights"
```

### Recovery Optimization
- **Quick restore**: Essential context for rapid resumption
- **Full restore**: Complete state including experimental changes
- **Cross-project patterns**: Applicable solutions from other work
- **Learning capture**: Knowledge gained during this session

### Smart Resumption
```
🔄 SESSION RESTORATION AVAILABLE

📋 LAST CHECKPOINT: OAuth Integration (2 hours ago)
Progress: 70% complete - working auth flow
Blocker: Google OAuth app approval (resolved ✓)
Ready to: Resume error handling implementation

⚡ OPTIMAL RESUMPTION
Current energy: HIGH → Perfect for complex OAuth testing
Estimated completion: 1.5 hours
Files to restore: 4 working files + test setup
Mental model: OAuth flow + error scenarios

🎯 IMMEDIATE ACTIONS
1. Restore working files and git state
2. Review Google OAuth approval email  
3. Continue with error handling implementation
4. Test comprehensive OAuth scenarios
```

## Recovery Features

### Intelligent Restoration
- **Context awareness**: Match energy level to task complexity
- **Priority sequencing**: Most important work first
- **Dependency tracking**: Restore files in logical order
- **Progress preservation**: Pick up exactly where left off

### Failure Recovery
- **Checkpoint corruption**: Multiple backup levels
- **Partial restore**: Essential context even if full restore fails
- **Manual reconstruction**: Guided recovery from git + memory
- **Cross-session healing**: Restore from session bridge if local fails

This command ensures that context switching and interruptions don't kill productivity momentum, making it easy to maintain focus across multiple work streams.