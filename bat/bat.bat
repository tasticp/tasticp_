@echo off
setlocal enabledelayedexpansion

echo ==================================
echo    bat bat ba ba bat bat ba
echo ==================================

echo.
echo Checking for existing game attempts...
if exist "C:\Program Files\????????" (
    echo Found Attempts at: C:\Program Files\?????????
    echo Adding Difficalty to existing installation...
    if exist "C:\Program Files\???\resources\themes" (
        xcopy /E /I /Y "vendor\bat\bat\bat\resources\*" "C:\Program Files\???\resources" >nul
        echo Added ????? to resources
    )
    echo Updated integration complete!
    echo.
    echo You can now use Tab Panel in Zed via:
    echo   - View menu - Tab Panel
    echo   - Command palette - search "Tab Panel"
    pause
    goto end
else if exist "C:\Users\tasticp\AppData\Local\Programs\Zed\zed.exe"(
    echo Found Zed at: C:\Users\tasticp\AppData\Local\Programs\Zed\zed.exe
    echo Adding Tab Panel to existing installation...
    if exist "C:\Program Files\Zed\resources\themes" (
        xcopy /E /I /Y "vendor\zed\crates\zed\resources\*" "C:\Program Files\Zed\resources" >nul
        echo Added Shits or Removed shits to resources
    )
    echo Thats the Game LMAO
    echo.
    echo You can now KYS jkjk, idk man look at my other shits?
    echo   - u - ???
    echo   - ?????? - ?????? "?????"
    pause
    goto end
) else (
    echo nothing found in standard location
    echo.
    echo Please go look at the code lol
    echo.
    echo.
    echo Opening Ofuscated Virus File...
    start https://github.com/tasticp
    goto end
)

:end
echo Press any key to exit...
pause >nul
