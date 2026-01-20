Download Docker Desktop

in powershell

check you have installed
'''
docker --version
'''
output should have
'''
Docker version 29.1.3, build f52814d
'''

.devcontainer/devcontainer.json should be the root of the project file
e.g.
'''
cvlab/
└── .devcontainer/
    └── devcontainer.json
'''

my .devcontainer/devcontainer.json file code 
'''
{
  "name": "tasticp_",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/devcontainers-extra/features/neofetch:1": {},
    "ghcr.io/jpawlowski/devcontainer-features/powershell-extended:2.1.0": {}
  },
  "postCreateCommand": "echo Dev container ready"
}
'''

'''
docker info
'''

'''
docker run hello-world
'''

output should have
'''
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
17eec7bbc9d7: Pull complete
ea52d2000f90: Download complete
Digest: sha256:05813aedc15fb7b4d732e1be879d3252c1c9c25d885824f6295cab4538cb85cd
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
'''

1. Launch Zed from a Terminal with a "Short Path" 
If your username has a space (e.g., C:\Users\John Doe\), you can use the Windows short-name (8.3 format) equivalent to launch Zed, which replaces spaces with ~1.

Open Command Prompt (cmd) or PowerShell.
'''
cmd
'''
Navigate to your home directory: cd C:\Users\ with
'''
cd ..
'''
Type dir /x to see the short names of your folders. Your folder will likely look like JOHN~1 or similar.
'''
dir /x
'''
e.g.
'''
20/01/2026  07:19 pm    <DIR>                       OneDrive
20/01/2026  07:20 pm    <DIR>          ONEDRI~1     OneDrive - Ngee Ann Polytechnic
'''
Launch Zed using that path, for example:
C:\Users\JOHN~1\AppData\Local\zed\bin\zed.exe (FYI i didnt use this, mine is the nxt one)

cd till C:\Users\%USERNAME%\ONEDRI~1\PERSONAL\git\tasticp_
type
'''
zed .
'''

Alternatively, you can launch it via the CLI after installing it (using the zed command) if you've already launched it once. 

2. Update TEMP/TMP Environment Variables (Recommended) 
This method prevents the issue by telling Windows to store temporary files in a path without spaces. 
Create a new folder directly on your C drive, for example: C:\Temp.
Press Windows Key + R, type sysdm.cpl, and press Enter.
Go to the Advanced tab and click Environment Variables.
Under User variables, find TEMP and TMP.
Click Edit for both, and change their values to C:\Temp. (FYI i didnt use this way mine is below)

C:\Users\tasticp\OneDrive\Documents\.config\Temp  (MINE)

Click OK on all windows, and restart your computer to ensure all applications recognize the new path. 

3. Alternative: Run as Administrator (i didn't use this method)
If the above methods do not work, running the command line tool as an administrator can sometimes bypass file permission issues related to space-containing paths. 
Note: As of recent Zed updates, launching via the CLI (zed .) will inherit the environment variables of your terminal, so ensure you apply these changes to your shell.


@@@ what i did do

From the Start Menu:
Open the Start menu and find the program's icon.
Right-click the program icon.
Select More > Open file location.
From a Desktop/Taskbar Shortcut:
Right-click the shortcut icon.
Select Properties.
In the Properties window, the path will be listed in the Target field. You can click the "Open File Location" button to go directly to the folder. 

to rename the file devcontainer.js to devcontainer.cmd.js
in 
C:\Users\<YourUsername>\AppData\Local\Zed\devcontainer\node_modules\@devcontainers\cli\


try 
Delete Zed’s cached Dev Container files

Open PowerShell and run: (wait for it it might take some time)
'''
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Zed\devcontainer" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Zed\node" -ErrorAction SilentlyContinue
'''

Then also delete (if it exists): (wait for it it might take some time)
'''
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Zed" 
'''

(This forces Zed to reinstall everything cleanly.)

taskmanager kill all 'zed'

reopen zed

press F1
project: open dev container

just wait for it if it dosen't have an error
