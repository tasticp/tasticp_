For Windows

Oh-My-Posh
See: https://ohmyposh.dev/
See: https://github.com/JanDeDobbeleer/oh-my-posh?tab=contributing-ov-file
To Install Oh-My-Posh
  ```
  winget install JanDeDobbeleer.OhMyPosh --source winget
  ```

To Update Oh-My-Posh
  ```
  winget upgrade JanDeDobbeleer.OhMyPosh --source winget
  ```

To Get Fonts
  ```
  oh-my-posh font install
  ```
  OR [for meslo font]
  ```
  oh-my-posh font install meslo
  ```

To Change Prompt
  ```
  oh-my-posh get shell
  ```

If 
```
notepad $PROFILE
```
is an error Type
```
New-Item -Path $PROFILE -Type File -Force
```


If 
```
oh-my-posh init pwsh | Invoke-Expression
```
is an error Type
```
oh-my-posh init pwsh --eval | Invoke-Expression
```

Reload
```
. $PROFILE
```
  

Fastfetch

See: https://github.com/fastfetch-cli/fastfetch

To Install Fastfetch
  ```
    winget install fastfetch
  ```


to find configuration file type
  ```
  $PROFILE
  ```
change %USERNAME% in ' config.jsonc ' file
