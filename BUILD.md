# Building Byndiecraft

## Maven (Recommended for Java 25)

Maven has better Java 25 support than Gradle.

### Quick Build

```bash
mvn clean package
```

The plugin JAR will be in `target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`

### Requirements

- Java 21 or higher (including Java 25!)
- Maven 3.6+

### Install Maven

**Ubuntu/Debian:**
```bash
sudo apt install maven
```

**macOS:**
```bash
brew install maven
```

**Verify:**
```bash
mvn -version
```

## Gradle (Legacy, Java 21 Required)

If you prefer Gradle, it still works but requires Java 21 to run:

```bash
./gradlew clean build
```

See `BUILD-ON-JAVA25.md` for workarounds if you only have Java 25.

## Which Should I Use?

| Build Tool | Java 21 | Java 25 | Recommendation |
|------------|---------|---------|----------------|
| **Maven**  | ✅ Works | ✅ Works | ✅ **Use this!** |
| **Gradle** | ✅ Works | ⚠️ Needs workaround | Use only if you have Java 21 |

## Output

Both build tools produce the same JAR that works on Java 21-25 servers:
- **Maven:** `target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`
- **Gradle:** `build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`

## Deploy

```bash
# Maven
cp target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar /path/to/server/plugins/

# Gradle
cp build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar /path/to/server/plugins/
```

Then restart your Minecraft server!
