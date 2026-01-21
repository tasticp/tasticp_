#!/bin/bash
# ==============================================================================
# DEV CONTAINER SETUP SCRIPT
# ==============================================================================
# 
# Purpose: Initializes the tasticp_ development container with all necessary
#          tools, configurations, and customizations
# Author: tasticp_ <ricksue99@gmail.com>
# Created: 2026-01-21
# 
# This script is executed once when the container is first created and sets up:
# - System package installation
# - Git configuration and account management
# - Custom shell environment
# - Development tools and utilities
# ==============================================================================

set -e  # Exit on any error

# ==============================================================================
# COLOR DEFINITIONS FOR OUTPUT FORMATTING
# ==============================================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ==============================================================================
# FUNCTION: PRINT FORMATTED MESSAGES
# ==============================================================================
print_step() {
    echo -e "${BLUE}[SETUP]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_header() {
    echo -e "${PURPLE}==============================================================================${NC}"
    echo -e "${PURPLE}$1${NC}"
    echo -e "${PURPLE}==============================================================================${NC}"
}

# ==============================================================================
# STEP 1: SYSTEM UPDATE AND PACKAGE INSTALLATION
# ==============================================================================
print_header "STEP 1: SYSTEM PACKAGE INSTALLATION"

print_step "Updating package lists..."
sudo apt-get update

print_step "Installing essential development tools..."
sudo apt-get install -y \
    curl \
    wget \
    htop \
    tree \
    bat \
    exa \
    git \
    build-essential \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release

print_success "System packages installed successfully"

# ==============================================================================
# STEP 2: GIT CONFIGURATION
# ==============================================================================
print_header "STEP 2: GIT CONFIGURATION"

print_step "Setting default git identity..."
git config --global user.name "tasticp_"
git config --global user.email "ricksue99@gmail.com"

print_step "Configuring git behavior..."
git config --global init.defaultBranch "main"
git config --global pull.rebase "true"
git config --global push.autoSetupRemote "true"

print_success "Git configuration completed"

# ==============================================================================
# STEP 3: CUSTOM SHELL ENVIRONMENT SETUP
# ==============================================================================
print_header "STEP 3: CUSTOM SHELL ENVIRONMENT"

# Copy custom bashrc to user home
print_step "Installing custom bash configuration..."
cp /workspaces/.devcontainer/config/.bashrc_custom ~/.bashrc_custom

# Source the custom bashrc in the main bashrc
if ! grep -q "source ~/.bashrc_custom" ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# Custom tasticp_ development environment" >> ~/.bashrc
    echo "source ~/.bashrc_custom" >> ~/.bashrc
fi

print_success "Custom shell environment configured"

# ==============================================================================
# STEP 4: DEVELOPMENT TOOLS CONFIGURATION
# ==============================================================================
print_header "STEP 4: DEVELOPMENT TOOLS CONFIGURATION"

print_step "Configuring GitHub CLI..."
# GitHub CLI will be configured by user on first use
echo "GitHub CLI installed. Run 'gh auth login' to authenticate."

print_step "Setting up workspace permissions..."
# Ensure proper permissions for the workspace
sudo chown -R vscode:vscode /workspaces 2>/dev/null || true

print_success "Development tools configured"

# ==============================================================================
# SETUP COMPLETION
# ==============================================================================
print_header "SETUP COMPLETION"

print_success "tasticp_ Dev Container setup completed!"
echo ""
echo -e "${CYAN}Available Commands:${NC}"
echo -e "  ${YELLOW}git-tasticp${NC}    - Switch to ricksue99@gmail.com account"
echo -e "  ${YELLOW}git-rick69${NC}      - Switch to ricksue69@gmail.com account"
echo -e "  ${YELLOW}git-who${NC}         - Show current git account"
echo -e "  ${YELLOW}gs, gp, gl, gc${NC}  - Git status, push, pull, commit"
echo -e "  ${YELLOW}ll${NC}              - Enhanced directory listing"
echo -e "  ${YELLOW}tree${NC}            - Directory tree view"
echo ""
echo -e "${CYAN}Development Environment Ready! 🚀${NC}"

# Source the custom bashrc to apply changes immediately
source ~/.bashrc_custom 2>/dev/null || true