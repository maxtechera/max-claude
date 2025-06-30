# /knowledge-capture - Build Personal Knowledge Base

Systematically capture solutions, patterns, and learnings from development work for future reuse and content creation.

## Core Function
- **Solution documentation**: Capture working solutions with context
- **Pattern extraction**: Identify reusable patterns and approaches  
- **Decision recording**: Document technical choices with rationale
- **Content mining**: Flag teachable moments for tutorials/posts
- **Cross-project intelligence**: Build connections between projects

## Capture Modes

### --solution [problem] (Document Solution)
**Purpose**: Capture a working solution for future reference
**Process**:
- Document the original problem and context
- Record the solution approach and implementation
- Note why this approach was chosen over alternatives
- Tag with relevant technologies and project context
- Estimate reusability across other projects

### --pattern [name] (Extract Reusable Pattern)
**Purpose**: Identify and document reusable code/architecture patterns
**Process**:
- Extract the core pattern from specific implementation
- Document usage context and benefits
- Provide implementation template or example
- Note variations and customization points
- Track usage across multiple projects

### --decision [choice] (Record Technical Decision)
**Purpose**: Document important technical decisions with full context
**Process**:
- Record the decision and available alternatives
- Document the context and constraints that influenced choice
- Note the rationale and expected outcomes
- Track actual results vs expectations over time
- Build decision-making patterns for similar situations

### --debug [session] (Capture Debugging Process)
**Purpose**: Document complex debugging sessions for learning
**Process**:
- Record the initial problem and symptoms
- Document investigation steps and dead ends
- Capture the breakthrough moment and root cause
- Note debugging techniques that worked
- Extract general debugging approaches

## Example Usage
```bash
/knowledge-capture --solution "React form validation with async rules"
/knowledge-capture --pattern auth-flow --from current-project
/knowledge-capture --decision "PostgreSQL vs MongoDB for user data"  
/knowledge-capture --debug --session "Memory leak in Node.js worker"
/knowledge-capture --content "This debugging session = great tutorial"
```

## Knowledge Organization

### Solution Library Format
```
🔧 SOLUTION CAPTURED: React Async Form Validation

📋 PROBLEM CONTEXT
Project: Client Portal Dashboard
Stack: React + TypeScript + React Hook Form
Issue: Form validation needs to check username availability via API
Complexity: Async validation with debouncing + user feedback

🎯 SOLUTION APPROACH  
Pattern: Custom validation hook with async debouncing
Implementation: useAsyncValidation hook + React Query
Key insight: Separate validation state from form state
Performance: 300ms debounce prevents API spam

💡 WHY THIS APPROACH
✓ Reusable across different forms
✓ Built-in loading and error states
✓ TypeScript-friendly with proper types
✓ Integrates well with React Hook Form
✗ Slightly more complex than simple sync validation

🔄 REUSABILITY  
Usage contexts: Any form with async validation needs
Variations: Debounce timing, validation triggers, error display
Similar patterns: useAsyncSearch, useAsyncData
Cross-project potential: HIGH (client work + personal projects)

📝 CONTENT POTENTIAL
Tutorial: "Building Reusable Async Validation Hooks"
Blog post: "React Form Performance with Smart Debouncing"  
Code example: GitHub gist with full implementation
Estimated audience: React developers, form validation

🏷️ TAGS: react, typescript, forms, validation, async, hooks, performance
```

### Pattern Library Format
```
🎨 PATTERN EXTRACTED: Authenticated API Hook

📐 PATTERN OVERVIEW
Name: useAuthenticatedAPI
Category: API Integration
Purpose: Consistent API calls with authentication and error handling
Used in: 3 client projects, 2 personal projects

🔨 IMPLEMENTATION TEMPLATE
```typescript
function useAuthenticatedAPI<T>(endpoint: string) {
  // Pattern implementation...
}
```

💪 BENEFITS
- Consistent error handling across all API calls
- Automatic token refresh and retry logic  
- Built-in loading states and cache management
- TypeScript-friendly with proper generics

🎯 USAGE CONTEXTS
✓ Client dashboards with protected routes
✓ Personal SaaS applications
✓ Any React app with JWT authentication
✗ Simple public APIs without auth

📈 EVOLUTION TRACKING
v1: Basic auth headers
v2: Added token refresh logic
v3: Added retry mechanism and better error types
v4: Integrated with React Query for caching

🎓 TEACHING VALUE
Workshop: "Building Robust API Layers in React"
Course module: "Authentication Patterns in Modern React"
Blog series: "From Basic Fetch to Production API Hooks"
```

## Capture Triggers

### Automatic Detection
- **Time threshold**: Debugging >30 minutes → Suggest capture
- **Solution found**: After resolving complex issue → Auto-prompt
- **Pattern repeat**: Same approach used 3+ times → Extract pattern
- **Client switch**: End of client session → Capture key learnings

### Manual Triggers  
- **Breakthrough moments**: "This approach solved it perfectly"
- **Novel solutions**: "Haven't seen this approach before"
- **Teaching opportunities**: "This would make a great tutorial"
- **Cross-project insights**: "This applies to other projects too"

## Knowledge Types

### Technical Solutions
- **Bug fixes**: Complex issues and their resolutions
- **Performance optimizations**: What worked and measured results
- **Integration challenges**: API/service connection solutions
- **Security implementations**: Auth, validation, data protection

### Architectural Patterns
- **Component structures**: Reusable UI and business logic patterns
- **Data flow**: State management and API integration approaches
- **Code organization**: Project structure and file organization
- **Testing strategies**: Unit, integration, and E2E test patterns

### Decision Documentation
- **Technology choices**: Framework, library, and tool selections
- **Architecture decisions**: System design and trade-off choices
- **Process decisions**: Workflow, deployment, and team choices
- **Business decisions**: Feature prioritization and scope choices

### Content Opportunities
- **Tutorial ideas**: Step-by-step learning content
- **Blog topics**: Insights and experience sharing
- **Code examples**: Reusable snippets and demos
- **Case studies**: Project stories and lessons learned

## Integration Features

### Cross-Project Intelligence
- **Pattern matching**: Find similar solutions across projects
- **Learning transfer**: Apply insights from one project to another
- **Client knowledge**: Share appropriate insights between clients
- **Personal development**: Build expertise through systematic learning

### Content Pipeline Integration
- **Auto-flagging**: Identify content-worthy moments automatically
- **Idea tracking**: Build content backlog from daily work
- **Authority building**: Document expertise for professional growth
- **Teaching preparation**: Organize knowledge for sharing

### Search and Retrieval
- **Smart search**: Find solutions by problem description
- **Tag-based filtering**: Browse by technology, pattern, or context
- **Time-based browsing**: See learning progression over time
- **Project correlation**: Find patterns used across multiple projects

This command transforms everyday problem-solving into a systematic knowledge-building process, creating a personal expertise database that accelerates future work and builds professional authority.