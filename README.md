# savefiles

For Windows most of the saves end up in:
```
%USERPROFILE%\AppData\Local
```

For Debian-based Linux distributions:
```
$HOME/.steam/debian-installation/steamapps/compatdata/{appId}
```

Where `appId` is the game ID that can be acquired from the URL of the gane's storepage/community hub.
Each game directory has its own subdirectory tree, mimicing Windows' C drive.
The path similar to the Windows equivalent ends up being:
```
pfx/drive_c/users/steamuser/AppData
```
