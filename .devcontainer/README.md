# tasticp_ Dev Container

## 📋 Overview

This is a professional development container optimized for the tasticp_ project. It provides a beautiful terminal environment, git account management, and comprehensive development tools.

## 🚀 Features

### Core Development Tools
- **Ubuntu Base**: Stable Ubuntu environment with essential development tools
- **Git Enhanced**: Advanced git configuration with multiple account support
- **GitHub CLI**: Integrated GitHub workflow management
- **Docker Support**: Container-in-container for full development lifecycle

### Terminal Experience
- **Beautiful Prompt**: Color-coded terminal with git status integration
- **Modern Tools**: `exa`, `bat`, `htop` for enhanced file viewing and system monitoring
- **Productivity Aliases**: Time-saving shortcuts for common operations
- **Git Account Management**: Easy switching between multiple git identities

### VS Code Integration
- **Optimized Fonts**: Fira Code for better readability
- **Smart Git**: Auto-fetch, smart commit, and seamless synchronization
- **Enhanced Terminal**: Customized terminal appearance and behavior

## 🛠️ Usage

### Git Account Management

The container supports multiple git identities for different projects:

```bash
# Switch to primary account (ricksue99@gmail.com)
git-tasticp

# Switch to secondary account (ricksue69@gmail.com)  
git-rick69

# Show current git identity
git-who

# List all available accounts
git-list
```

### Essential Aliases

#### Git Workflow
```bash
gs      # git status
gp      # git push  
gl      # git pull --rebase
gc      # git commit
ga      # git add
gd      # git diff
glog    # git log --oneline --graph --decorate
```

#### File Operations
```bash
ll      # Enhanced directory listing
tree    # Directory tree view
mkcd    # Create and enter directory (mkcd project)
search  # Search in files (search 'function' ./src)
```

#### System Monitoring
```bash
htop    # Interactive process viewer
du      # Directory size summary
df      # Disk usage
```

## 📁 Project Structure

```
.devcontainer/
├── devcontainer.json          # Main container configuration
├── setup-container.sh         # Container initialization script
├── config/
│   └── .bashrc_custom        # Custom bash environment
└── SECURITY.md                # Security documentation
```

## 🔧 Configuration Files

### devcontainer.json
Defines the container specification including:
- Base image and features
- VS Code customizations
- Runtime configuration

### setup-container.sh
One-time initialization script that:
- Installs system packages
- Configures git environment
- Sets up custom shell environment

### .bashrc_custom
Enhanced bash configuration providing:
- Beautiful terminal appearance
- Productivity aliases
- Git account management
- Development utilities

## 🔒 Security

**Important**: Git account switching only affects commit metadata locally. GitHub permissions are enforced at the server level and require proper authentication.

For detailed security information, see [SECURITY.md](SECURITY.md).

## 🚀 Getting Started

1. Open the project in VS Code
2. Reopen in Container (when prompted)
3. Wait for setup to complete
4. Use `git-tasticp` or `git-rick69` to set your preferred git identity
5. Start coding with enhanced productivity!

## 🎨 Customization

The container is easily customizable:
- Add new git accounts in `config/.bashrc_custom`
- Modify aliases to match your workflow
- Extend the setup script for additional tools
- Adjust VS Code settings in `devcontainer.json`

## 📞 Support

For issues or questions:
1. Check the welcome message in your terminal
2. Review the configuration files
3. Verify GitHub CLI authentication with `gh auth status`

---

**Enjoy your optimized development environment! 🎉**