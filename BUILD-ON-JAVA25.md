# Building Byndiecraft on Java 25

## The Problem

Gradle 8.x (including 8.12) only officially supports up to Java 23. If you're running Java 25, you'll get this error:

```
BUG! exception in phase 'semantic analysis' in source unit '_BuildScript_' 
Unsupported class file major version 69
```

## Solution: Use Java 21 to Build

The solution is to **use Java 21 to run Gradle**, while the plugin itself is compiled to Java 21 bytecode (which works perfectly on Java 25 servers due to backward compatibility).

### Option 1: Temporary JAVA_HOME (Recommended)

Set Java 21 just for the build:

```bash
# Find Java 21 installation
/usr/libexec/java_home -V

# Build with Java 21
JAVA_HOME=$(/usr/libexec/java_home -v 21) ./gradlew clean build
```

Or on Linux:

```bash
# Find Java 21
sudo update-alternatives --config java

# Build with Java 21
JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64 ./gradlew clean build
```

### Option 2: Use System Java 21

Install Java 21 and temporarily switch to it:

**On macOS:**
```bash
# Install Java 21 if needed
brew install openjdk@21

# Switch to Java 21
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH="$JAVA_HOME/bin:$PATH"

# Verify
java -version  # Should show Java 21

# Build
./gradlew clean build
```

**On Ubuntu/Debian:**
```bash
# Install Java 21 if needed
sudo apt update
sudo apt install openjdk-21-jdk

# Switch to Java 21
sudo update-alternatives --config java
# Select Java 21 from the list

# Verify
java -version  # Should show Java 21

# Build
./gradlew clean build
```

### Option 3: Docker Build (Cleanest)

Build in a Docker container with Java 21:

```bash
docker run --rm -v $(pwd):/project -w /project gradle:8.12-jdk21 gradle clean build
```

This ensures a consistent build environment.

### Option 4: Create gradle.properties (Per-Server)

Create a `gradle.properties` file on your server (not committed to git):

```bash
echo "org.gradle.java.home=/usr/lib/jvm/java-21-openjdk-amd64" > gradle.properties
```

Then build normally:
```bash
./gradlew clean build
```

**Note:** Don't commit this file - the Java path is different on each machine.

## After Building

The resulting JAR (`build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`) will work perfectly on **any Java 21+ server**, including Java 25.

## Why This Works

- **Gradle needs Java 21** to run the build process
- **The plugin is compiled to Java 21 bytecode** (major version 65)
- **Java 25 can run Java 21 bytecode** thanks to backward compatibility
- **Everyone wins!** ✅

## Quick Reference

| Java Version | Can Run Gradle? | Can Run Plugin? |
|--------------|----------------|-----------------|
| Java 21      | ✅ Yes         | ✅ Yes          |
| Java 22      | ✅ Yes         | ✅ Yes          |
| Java 23      | ✅ Yes         | ✅ Yes          |
| Java 24      | ❌ No*         | ✅ Yes          |
| Java 25      | ❌ No*         | ✅ Yes          |

*Can't run Gradle 8.x, but can run the built plugin

## For Hackathon Team

**On your Java 25 server:**

```bash
# Option 1: Install Java 21 alongside Java 25
sudo apt install openjdk-21-jdk

# Option 2: Build with Docker (no Java 21 install needed)
docker run --rm -v $(pwd):/project -w /project gradle:8.12-jdk21 gradle clean build

# Option 3: Build on your local machine and scp the JAR
# (If local machine has Java 21)
```

## Future: Gradle 9.x

When Gradle 9.x is released (expected 2026), it will natively support Java 25 and this workaround won't be needed.

---

**TL;DR:** Build with Java 21, run on Java 25. It just works! 🚀
