20/01/2026  07:19 pm    <DIR>                       OneDrive
20/01/2026  07:20 pm    <DIR>          ONEDRI~1     OneDrive - Ngee Ann Polytechnic

1. Launch Zed from a Terminal with a "Short Path" 
If your username has a space (e.g., C:\Users\John Doe\), you can use the Windows short-name (8.3 format) equivalent to launch Zed, which replaces spaces with ~1. 
Open Command Prompt (cmd) or PowerShell.
Navigate to your home directory: cd C:\Users\
Type dir /x to see the short names of your folders. Your folder will likely look like JOHN~1 or similar.
Launch Zed using that path, for example:
C:\Users\JOHN~1\AppData\Local\zed\bin\zed.exe
Alternatively, you can launch it via the CLI after installing it (using the zed command) if you've already launched it once. 
2. Update TEMP/TMP Environment Variables (Recommended) 
This method prevents the issue by telling Windows to store temporary files in a path without spaces. 
Create a new folder directly on your C drive, for example: C:\Temp.
Press Windows Key + R, type sysdm.cpl, and press Enter.
Go to the Advanced tab and click Environment Variables.
Under User variables, find TEMP and TMP.
Click Edit for both, and change their values to C:\Temp.
Click OK on all windows, and restart your computer to ensure all applications recognize the new path. 
3. Alternative: Run as Administrator 
If the above methods do not work, running the command line tool as an administrator can sometimes bypass file permission issues related to space-containing paths. 
Note: As of recent Zed updates, launching via the CLI (zed .) will inherit the environment variables of your terminal, so ensure you apply these changes to your shell.



C:\Users\<YourUsername>\AppData\Local\Zed\devcontainer\node_modules\@devcontainers\cli\
devcontainer.js to devcontainer.cmd.js

ONEDRI~1 for onedrive ngeeann
