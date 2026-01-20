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
