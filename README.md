# 🎮 Byndiecraft - Minecraft Jira Board Integration

> **Hackathon Project**: Recreate team stand-ups in Minecraft by syncing Jira tickets with in-game item frames!

## 🌟 Overview

Byndiecraft allows you to visualize and interact with your Jira board directly in Minecraft. Move written books between item frames to update ticket statuses in real-time!

### Features

- ✅ **Visual Jira Board**: Organize item frames as status columns (To Do, In Progress, Done)
- ✅ **Book-Based Tickets**: Written books represent Jira tickets
- ✅ **Real-Time Sync**: Moving books triggers Jira API calls to update ticket status
- ✅ **Instant Feedback**: Players receive chat messages on successful/failed updates
- 🚧 **Bi-directional Sync**: (Phase 2) Jira changes reflect back in Minecraft

## 🚀 Quick Start

### Prerequisites

- Java 21 or higher (including Java 25!)
- Maven 3.6+ or Gradle 8.x
- Paper/Spigot 1.21 Minecraft server
- Jira Cloud account with API access

### Installation

1. **Build the plugin:**
   
   **Option A: Maven (Recommended for Java 25)**
   ```bash
   cd byndiecraft-plugin
   mvn clean package
   ```
   Output: `target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`

   **Option B: Gradle**
   ```bash
   cd byndiecraft-plugin
   ./gradlew build
   ```
   Output: `build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar`

   > **Note:** If you're on Java 25, use Maven (it has better Java 25 support). Gradle requires Java 21 to run. See [BUILD.md](BUILD.md) for details.

2. **Copy to server:**
   ```bash
   # Maven
   cp target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar /path/to/server/plugins/
   
   # Or Gradle
   cp build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar /path/to/server/plugins/
   ```

3. **Configure Jira credentials:**
   
   Edit `plugins/Byndiecraft/config.yml`:
   ```yaml
   jira:
     url: "https://bynder.atlassian.net"
     email: "your-email@bynder.com"
     api_token: "YOUR_API_TOKEN_HERE"
     project_key: "TAP"
   ```

   Or set environment variable before starting server:
   ```bash
   export JIRA_API_TOKEN="your_token_here"
   ```

4. **Generate Jira API Token:**
   - Go to https://id.atlassian.com/manage-profile/security/api-tokens
   - Click "Create API token"
   - Copy the token and add it to config.yml or environment variable

5. **Restart server**

## 🎯 How to Use

### 1. Set Up Your Board

Build a wall of item frames in Minecraft organized into columns:

```
[ To Do ]  [ In Progress ]  [ Done ]
[Frame] [Frame]  [Frame] [Frame]  [Frame] [Frame]
[Frame] [Frame]  [Frame] [Frame]  [Frame] [Frame]
[Frame] [Frame]  [Frame] [Frame]  [Frame] [Frame]
```

### 2. Configure Columns

Edit `config.yml` to map columns to Jira statuses:

```yaml
board:
  world: "world"
  columns:
    - name: "To Do"
      jira_status_name: "To Do"
      frames:
        - { x: 100, y: 64, z: 200 }
        - { x: 100, y: 65, z: 200 }
    
    - name: "In Progress"
      jira_status_name: "In Progress"
      frames:
        - { x: 105, y: 64, z: 200 }
```

Or use the command:
```
/jiraboard addcolumn "To Do" "To Do"
```

### 3. Create Ticket Books

Create a **written book** with the title format:
```
TAP-123: Fix login bug
```

or simply:
```
TAP-123
```

The plugin will extract the ticket key and validate it against Jira.

### 4. Move Tickets!

- Place the book in an item frame in the "To Do" column
- When you move it to "In Progress", Jira updates automatically!
- You'll receive a chat message: `✓ TAP-123 moved to 'In Progress'`

## 📋 Commands

| Command | Description | Permission |
|---------|-------------|------------|
| `/jiraboard info` | Show board configuration | `byndiecraft.use` |
| `/jiraboard setup` | Display setup guide | `byndiecraft.admin` |
| `/jiraboard addcolumn <name> <status>` | Add a status column | `byndiecraft.admin` |
| `/jiraboard refresh` | Manual sync (Phase 2) | `byndiecraft.admin` |

## 🔧 Configuration

### config.yml Structure

```yaml
jira:
  url: "https://bynder.atlassian.net"
  email: "your-email@bynder.com"
  api_token: "${JIRA_API_TOKEN}"  # Environment variable or direct value
  project_key: "TAP"

board:
  world: "world"
  columns:
    - name: "To Do"
      jira_status_name: "To Do"
      frames: []

debug: false  # Set to true for verbose logging
```

### Finding Frame Coordinates

Stand next to an item frame and run:
```
/execute at @p run tp ~ ~ ~
```

This shows your coordinates. Use these in the config.

## 🎬 Demo Script (Hackathon)

1. **Show the setup**: Minecraft Jira board with labeled columns
2. **Create books**: Hand out written books with real Jira ticket keys
3. **Simulate stand-up**:
   - Player 1: "I'm working on TAP-123" → moves book to "In Progress"
   - Show browser with Jira board updating live
   - Player 2: "I finished TAP-456" → moves book to "Done"
   - Show browser update again
4. **Error handling**: Try invalid ticket key → see error message
5. **Phase 2 demo** (if implemented): Run `/jiraboard refresh`

## 🏗 Architecture

```
Minecraft Server (Paper)
├── ByndiecraftPlugin (Main)
├── ItemFrameListener (Detects book movements)
├── BoardManager (Tracks frame coordinates)
├── JiraClient (HTTP client for Jira API)
└── Commands (Board management)
         ↓
    Jira REST API
```

## 🐛 Troubleshooting

### "Failed to update ticket"
- Check if the ticket exists in Jira
- Verify you have permission to transition the ticket
- Ensure the target status exists for that ticket type

### "API token not configured"
- Make sure `JIRA_API_TOKEN` environment variable is set, or
- Add the token directly to `config.yml` (not recommended for production)

### "No valid Jira ticket key found"
- Book title must contain a valid ticket key (e.g., `TAP-123`)
- Format: `PROJECT-NUMBER`

### Enable Debug Mode
Set `debug: true` in config.yml to see detailed logs.

## 🔧 Building from Source

### Maven (Recommended)
```bash
# Install Maven if needed
sudo apt install maven  # Ubuntu/Debian
brew install maven      # macOS

# Build
mvn clean package

# Output
target/byndiecraft-plugin-1.0.0-SNAPSHOT.jar
```

### Gradle
```bash
# Build
./gradlew clean build

# Output
build/libs/byndiecraft-plugin-1.0.0-SNAPSHOT.jar
```

**Java 25 Users:** Maven works out-of-the-box on Java 25. Gradle requires Java 21 to run the build. See [BUILD.md](BUILD.md) for complete build instructions and [BUILD-ON-JAVA25.md](BUILD-ON-JAVA25.md) for Gradle workarounds.

## 🚀 Phase 2 Features (Roadmap)

- [ ] Bi-directional sync (Jira → Minecraft)
- [ ] Polling mechanism (every 60 seconds)
- [ ] Jira webhooks for real-time updates
- [ ] Visual effects (particles, sounds)
- [ ] Multi-board support
- [ ] Persistent board state in database

## 👥 Team Byndiecraft

Built with ❤️ during the Bynder Hackathon

## 📄 License

Internal Bynder project for hackathon demonstration.

---

**Need help?** Check the logs in `logs/latest.log` or run `/jiraboard setup` in-game.
