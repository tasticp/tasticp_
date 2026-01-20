find template to replace the file
https://containers.dev/templates
https://containers.dev/features

SetUp
########################################
in windows
in settings systems-advance- virtual workspace
enable remote Desktop
enable Virtual Workspaces containers  
enable sudo

whoami
wsl -u root
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
  if dont want then
  sudo systemctl disable docker.service
  sudo systemctl disable containerd.service
go to docker desktop
enable WSL 2 in docker desktop in settings - general
F1
type reopen
press rebuild at the bottom left side
########################################


# Optional

Zed editor MCP
########################################
curl -fsSL https://raw.githubusercontent.com/dagger/container-use/main/install.sh | bash
########################################


Zed pwsh
########################################
apt update
apt install -y wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb

packages-microsoft-prod.deb came from ^^^^

dpkg -i packages-microsoft-prod.deb
apt update
apt install -y powershell
pwsh
########################################

add this to zed file settings with ctrl+alt+,
'''
"terminal": {
  "font_family": "JetBrainsMono Nerd Font"
}
'''

FYI they print
'''
If you want to use a built-in theme, you can find them in the /root/.cache/oh-my-posh/themes directory:
  oh-my-posh init {shell} --config /root/.cache/oh-my-posh/themes/{theme}.omp.json
'''

# Download the latest Oh My Posh binary
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O oh-my-posh

# Make it executable
chmod +x oh-my-posh

# Move it to a directory in your PATH
sudo mv oh-my-posh /usr/local/bin/

oh-my-posh --version

cd .. till root
cd /.config/powershell/
nano Microsoft.PowerShell_profile.ps1
shld look like this
'''
root@tasticp:~/.config/powershell# nano Microsoft.PowerShell_profile.ps1
'''

paste this but change the file of .txt aka the image and change the theme if you want
'''
##################################################   Microsoft.PowerShell_profile.ps1  ##################################################
# Suppress command echoing
$ErrorActionPreference = 'SilentlyContinue'

# UTF-8 encoding setup
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null 2>&1
} catch {}

# Oh My Posh initialization
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin_mocha.omp.json' | Invoke-Expression

# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/dracula.omp.json' | Invoke-Expression


Clear-Host

# Fastfetch with random logo on startup
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    $logos = @(
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/ascii.txt",
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/ascii_cathey.txt",
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/asclaude.txt"
#############################################################################
	"$HOME\OneDrive\Documents\.config\fastfetch\logos\ascii.txt",
        "$HOME\OneDrive\Documents\.config\fastfetch\logos\ascii_cathey.txt",
        "$HOME\OneDrive\Documents\.config\fastfetch\logos\asclaude.txt"
    )
    fastfetch -c "$HOME/OneDrive/Documents/.config/fastfetch/config.jsonc" --logo (Get-Random -InputObject $logos)
}

# Function for manual runs
function ff {
    $logos = @(
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/ascii.txt",
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/ascii_cathey.txt",
      #  "$HOME/OneDrive/Documents/.config/fastfetch/logos/asclaude.txt"
#############################################################################
	"$HOME\OneDrive\Documents\.config\fastfetch\logos\ascii.txt",
        "$HOME\OneDrive\Documents\.config\fastfetch\logos\ascii_cathey.txt",
        "$HOME\OneDrive\Documents\.config\fastfetch\logos\asclaude.txt"

    )
    fastfetch -c "$HOME/OneDrive/Documents/.config/fastfetch/config.jsonc" --logo (Get-Random -InputObject $logos)
}

##################################################   powershell_configs.txt.ps1  ##################################################
'''
check with
'''
echo "   "
'''
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update
