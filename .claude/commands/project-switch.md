# /project-switch - Seamless Multi-Project Management

Intelligently switch between client work, personal projects, and content creation while preserving momentum and context.

## Core Function
- **Context preservation**: Save current project state before switching
- **Intelligent restoration**: Load target project with full context
- **Standards adaptation**: Apply project-specific conventions automatically  
- **Progress tracking**: Maintain momentum across all work streams
- **Energy optimization**: Match current energy to optimal project choice

## Switch Modes

### --to [project] (Direct Project Switch)
**Purpose**: Switch to specific project with full context restoration
**Process**:
- Auto-checkpoint current project state
- Load target project context (git, conventions, next actions)
- Display project status and immediate priorities
- Suggest optimal tasks based on current energy level

### --smart (Intelligent Project Selection)
**Purpose**: AI-suggested project switch based on context and energy
**Process**:
- Analyze current energy level and available time
- Review all project priorities and deadlines
- Suggest optimal project and task for current context
- Show reasoning behind recommendation

### --energy [level] (Energy-Based Switching)
**Purpose**: Switch to project that matches current energy level
**Options**:
- `--energy high`: Complex problems, new features, architecture
- `--energy medium`: Code reviews, refactoring, testing
- `--energy low`: Documentation, admin tasks, content planning

### --client (Client Work Mode)
**Purpose**: Switch to client work with professional context
**Process**:
- Load client-specific conventions and requirements
- Show active Jira issues and sprint priorities
- Set professional communication tone
- Track billable time and deliverables

## Example Usage
```bash
/project-switch --to theanswer                    # Switch to CTO work
/project-switch --smart                          # AI suggests best project  
/project-switch --energy low                     # Match low energy tasks
/project-switch --client lastrev                 # Client work mode
/project-switch --content                        # Content creation mode
```

## Switch Intelligence Display
```
🔄 PROJECT SWITCH: Personal → Client (LastRev)

💾 CURRENT STATE SAVED
Project: Personal Blog Platform
Progress: 60% through authentication system
Next: Implement password reset flow
Checkpoint: feature/auth-system branch saved

🎯 TARGET PROJECT LOADED
Client: LastRev Technologies  
Project: Enterprise Dashboard v2.1
Priority: HIGH - Sprint deadline Friday
Active issue: DASH-245 - Performance optimization

📋 IMMEDIATE PRIORITIES
🔥 URGENT: Fix dashboard loading performance (2-3 hrs)
📈 HIGH: Implement data caching layer (4-5 hrs)  
🔧 MEDIUM: Code review for teammate PRs (1 hr)
📝 LOW: Update API documentation (1-2 hrs)

⚡ ENERGY MATCH: HIGH
Current energy: Excellent for complex debugging
Recommended: Start with performance optimization
Alternative: If blocked, switch to caching implementation

🛠️ CONTEXT LOADED
Stack: React + TypeScript + Node.js + Redis
Standards: ESLint config, Prettier, Jest testing
Patterns: Custom hooks, Context providers, HOCs
Last session: Identified N+1 query issue in user dashboard

💡 QUICK WINS AVAILABLE
- Apply caching pattern from personal project
- Use performance debugging from last week
- Leverage React optimization hooks library

🕐 TIME ALLOCATION
Available: 4 hours focused work
Billable target: 8 hours today
Current week: 28/40 hours logged
```

## Project Context Management

### Client Work Context
- **Professional standards**: Code quality, documentation, testing
- **Communication protocols**: Slack integration, status updates
- **Delivery tracking**: Sprint goals, deadlines, dependencies
- **Time management**: Billable hours, productivity metrics

### Personal Project Context  
- **Innovation freedom**: Experiment with new technologies
- **Learning goals**: Skill development priorities
- **MVP focus**: Ship fast, iterate based on feedback
- **Content extraction**: Document interesting solutions

### Content Creation Context
- **Teaching mindset**: Explain concepts clearly
- **Audience awareness**: Target skill level and interests
- **Story development**: Problem → solution → lesson learned
- **Platform optimization**: YouTube, blog, Twitter formats

## Smart Switching Logic

### Context-Aware Recommendations
```
🧠 SMART SWITCH ANALYSIS

📊 PROJECT HEALTH
✓ LastRev: On track, performance issue needs attention
⚠️ TheAnswer: Slightly behind, authentication 60% complete  
✓ Personal Blog: Ahead of schedule, ready for next phase
🔄 Content Pipeline: 3 tutorial ideas ready for production

⚡ ENERGY & TIME
Current energy: HIGH (optimal for complex work)
Available time: 4 hours uninterrupted
Time of day: 10:30 AM (peak focus period)
Interruptions: Low (deep work block)

🎯 OPTIMAL RECOMMENDATION
Switch to: LastRev (Client Work)
Task: Dashboard performance optimization  
Reason: Urgent deadline + high energy match + complex problem
Estimated completion: 2.5 hours
Backup plan: Authentication system if blocked

🔄 ALTERNATIVES
2nd choice: TheAnswer authentication (personal project)
3rd choice: Content creation (tutorial recording)
If tired: Documentation and code reviews
```

### Cross-Project Pattern Recognition
- **Solution transfer**: Apply successful patterns between projects
- **Learning application**: Use new skills across all work streams
- **Efficiency gains**: Reuse tools and approaches
- **Knowledge compound**: Build expertise that benefits everything

## Integration Features

### Automatic Checkpointing
- **Git state**: Uncommitted changes and branch context
- **Mental model**: Current problem, approach, next steps
- **File context**: Open files and recent edits
- **Interruption recovery**: Easy pickup after meetings/calls

### Progress Preservation  
- **Task tracking**: Incomplete work and dependencies
- **Decision history**: Why certain approaches were chosen
- **Blocker documentation**: Issues preventing progress
- **Success patterns**: What's working well

### Energy Management
- **Task-energy matching**: Right work for current capacity
- **Context switching cost**: Minimize energy loss between projects
- **Flow state protection**: Avoid unnecessary interruptions
- **Recovery planning**: Lower energy tasks as fallbacks

### Communication Integration
- **Status updates**: Automatic progress reports for stakeholders
- **Client coordination**: Professional updates when switching away
- **Team synchronization**: Handoff information for collaborators
- **Personal tracking**: Progress journaling and reflection

## Advanced Features

### Multi-Stream Optimization
- **Deadline awareness**: Priority adjustments based on time pressure
- **Dependency management**: Project coordination and blocking issues
- **Resource allocation**: Time and energy distribution across projects
- **Risk mitigation**: Backup plans and contingency strategies

### Learning Acceleration
- **Pattern recognition**: Identify successful approaches across projects
- **Skill transfer**: Apply new techniques in multiple contexts
- **Expertise building**: Systematic knowledge development
- **Authority documentation**: Track growth for professional development

### Content Pipeline Integration
- **Tutorial extraction**: Turn project work into teaching content
- **Problem documentation**: Real challenges become case studies
- **Solution sharing**: Successful approaches become blog posts
- **Authority building**: Professional growth through public learning

This command eliminates the friction and momentum loss that typically comes with managing multiple projects, turning context switching into a productivity superpower for solopreneur engineers.