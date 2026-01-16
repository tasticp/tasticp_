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
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/dracula.omp.json" | Invoke-Expression

Clear-Host

# Fastfetch with random logo on startup
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    $logos = @(
        "C:/Users/tasticp/.config/fastfetch/ascii.txt",
        "C:/Users/tasticp/.config/fastfetch/ascii_cathey.txt",
        "C:/Users/tasticp/.config/fastfetch/asclaude.txt"
    )
    fastfetch -c "C:/Users/tasticp/.config/fastfetch/config.jsonc" --logo (Get-Random -InputObject $logos)
}

# Function for manual runs
function ff {
    $logos = @(
        "C:/Users/tasticp/.config/fastfetch/asclaude.txt",
        "C:/Users/tasticp/.config/fastfetch/ascii.txt",
        "C:/Users/tasticp/.config/fastfetch/ascii_cathey.txt"

    )
    fastfetch -c "C:/Users/tasticp/.config/fastfetch/config.jsonc" --logo (Get-Random -InputObject $logos)
}
