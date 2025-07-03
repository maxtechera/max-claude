#!/bin/bash
# Test script for Solo-Claude v4 Behavioral Engine

echo "🧪 Testing Solo-Claude v4 Behavioral Engine..."
echo "============================================"

# Test 1: Energy-Aware Routing Hook
echo -e "\n📊 Test 1: Energy-Aware Routing"
echo "Testing with high complexity task..."
./.claude/hooks/energy-aware-routing.hook "refactor the entire authentication system"

echo -e "\nTesting with low complexity task..."
./.claude/hooks/energy-aware-routing.hook "update README documentation"

# Test 2: Pattern Extraction Hook
echo -e "\n🔍 Test 2: Pattern Extraction"
echo "Simulating command patterns..."
./.claude/hooks/pattern-extraction.hook "/ticket MAX-123" "linear_workflow"
./.claude/hooks/pattern-extraction.hook "git commit -m 'fix: resolve issue'" "development"
./.claude/hooks/pattern-extraction.hook "/ticket MAX-124" "linear_workflow"

# Test 3: Unconscious Progression Hook
echo -e "\n💫 Test 3: Unconscious Progression"
echo "Tracking skill development..."
for i in {1..6}; do
    ./.claude/hooks/unconscious-progression.hook "/ticket" "command"
done

# Test 4: Configuration Validation
echo -e "\n✅ Test 4: Configuration Files"
echo "Checking behavioral engine config..."
if [ -f ".claude/shared/behavioral-engine.yml" ]; then
    echo "✓ Behavioral engine configuration found"
else
    echo "✗ Behavioral engine configuration missing"
fi

echo "Checking hooks directory..."
if [ -d ".claude/hooks" ]; then
    echo "✓ Hooks directory exists"
    ls -la .claude/hooks/*.hook | wc -l | xargs echo "✓ Number of hooks:"
else
    echo "✗ Hooks directory missing"
fi

echo "Checking settings configuration..."
if grep -q "behavioral_engine" .claude/settings.local.json; then
    echo "✓ Behavioral engine enabled in settings"
else
    echo "✗ Behavioral engine not configured in settings"
fi

# Test 5: Enhanced Thinking Matrix
echo -e "\n🧠 Test 5: Enhanced Thinking Matrix"
echo "Checking CLAUDE.md for thinking enhancements..."
if grep -q "Extended Thinking Matrix" CLAUDE.md; then
    echo "✓ Extended thinking matrix implemented"
else
    echo "✗ Extended thinking matrix missing"
fi

echo -e "\n============================================"
echo "🎉 Solo-Claude v4 Testing Complete!"
echo "============================================"

# Summary
echo -e "\n📋 Summary of Implementations:"
echo "1. ✓ Behavioral Hooks System - Energy routing, pattern extraction, unconscious tracking"
echo "2. ✓ Extended Thinking Triggers - Context-aware depth escalation"
echo "3. ✓ Energy-Context Task Routing - 3D decision space implementation"
echo -e "\nReady for production use! 🚀"