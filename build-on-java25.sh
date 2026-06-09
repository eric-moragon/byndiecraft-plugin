#!/bin/bash
# Quick build script for Java 25 servers
# This script builds the plugin using Java 21 (required by Gradle)
# The resulting JAR works on Java 25 servers

set -e

echo "🎮 Byndiecraft - Java 25 Build Script"
echo "======================================"
echo ""

# Check if we're on Java 25
JAVA_VERSION=$(java -version 2>&1 | grep version | awk -F'"' '{print $2}' | cut -d'.' -f1)
if [ "$JAVA_VERSION" = "25" ]; then
    echo "⚠️  Detected Java 25 - Gradle 8.x needs Java 21 to run"
    echo ""
fi

# Try to find Java 21
echo "🔍 Looking for Java 21..."

# Method 1: Check if java21 command exists
if command -v java21 &> /dev/null; then
    JAVA21_HOME=$(dirname $(dirname $(readlink -f $(which java21))))
    echo "✓ Found Java 21 via 'java21' command"
elif [ -d "/usr/lib/jvm/java-21-openjdk-amd64" ]; then
    JAVA21_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
    echo "✓ Found Java 21 at $JAVA21_HOME"
elif [ -d "/usr/lib/jvm/java-21-openjdk" ]; then
    JAVA21_HOME="/usr/lib/jvm/java-21-openjdk"
    echo "✓ Found Java 21 at $JAVA21_HOME"
elif [ -f "/usr/libexec/java_home" ]; then
    # macOS
    JAVA21_HOME=$(/usr/libexec/java_home -v 21 2>/dev/null || echo "")
    if [ -n "$JAVA21_HOME" ]; then
        echo "✓ Found Java 21 at $JAVA21_HOME"
    fi
fi

if [ -z "$JAVA21_HOME" ]; then
    echo ""
    echo "❌ Java 21 not found!"
    echo ""
    echo "Please install Java 21:"
    echo "  Ubuntu/Debian: sudo apt install openjdk-21-jdk"
    echo "  macOS:         brew install openjdk@21"
    echo ""
    echo "Or use Docker to build:"
    echo "  docker run --rm -v \$(pwd):/project -w /project gradle:8.12-jdk21 gradle clean build"
    echo ""
    exit 1
fi

echo ""
echo "🔨 Building with Java 21..."
echo "   (Plugin will work on Java 21-25)"
echo ""

# Build with Java 21
JAVA_HOME="$JAVA21_HOME" ./gradlew clean build

echo ""
echo "✅ Build successful!"
echo ""
echo "📦 Plugin JAR:"
ls -lh build/libs/byndiecraft-plugin-*.jar
echo ""
echo "🚀 Deploy with:"
echo "   cp build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar /path/to/server/plugins/"
echo ""
