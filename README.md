# Paste-it
A program that pastes the contents of the clipboard in protected fields.
Purpose
Sometimes, pasting the clipboard content isn't possible due to various reasons such as:
• System password fields on OSX
• Using a virtual machine where the clipboard isn't shared
• Remote Desktop where the clipboard doesn't work in password fields
• Connected via RDP with disabled clipboard sharing and local drives


## Windows
The Windows version is written in AutoHotKey and can be run by downloading the "Paste-it.exe" file. It can be accessed from the tray icons. 
using the Win + V keyboard shortcut to type the text in the clipboard. 

### To make it auto-start with Windows, 
place a shortcut in the startup folder (open the Run box and type "shell:startup").

## Linux
this is just a bash script
This version for Linux requires `xdotool` and `xclip` to be installed. The following command pastes the clipboard content to the selected window:

```bash
xclip -selection clipboard -out | tr \\n \\r | xdotool selectwindow windowfocus type --clearmodifiers --delay 25 --window %@ --file 
```

This command can be saved as a script and mapped to a hotkey. 

### A version that immediately pastes to the active window is also available:
```bash
xclip -selection clipboard -out | tr \\n \\r | xdotool type --clearmodifiers --delay 25 --file -
```

## OSX
The Mac version is written in AppleScript and can be run using the following command:
```
osascript -e 'tell application "System Events" to keystroke the clipboard as text'
```

To bind this to a keyboard shortcut, you can use built-in OSX utilities or third-party programs such as BetterTouchTool, Keyboard Maestro, or Hammerspoon. 
