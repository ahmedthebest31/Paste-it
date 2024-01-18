# Paste-it

A program that pastes the contents of the clipboard in protected fields as keystrokes.

## Purpose
Sometimes, pasting the clipboard content isn't possible due to various reasons such as:
1. System password fields on OSX
2. Using a virtual machine where the clipboard isn't shared
3. Remote Desktop where the clipboard doesn't work in password fields
4. Connected via RDP with disabled clipboard sharing and local drives
5. I primarily use it for VNC sessions and when dealing with VMs through my host computer.

## Usage
  just  Focus to the target window. Press `Ctrl + Shift + V`. Your clipboard contents should be typed as keystrokes onto the selected window.

## Windows
The Windows version is written in AutoHotKey and can be run by downloading the "Paste-it.exe" file. Access it from the tray icons and use the `Win + V` shortcut to type the clipboard text.

To make it auto-start with Windows, place a shortcut in the startup folder (open the Run box and type "shell:startup").

## Linux
This version requires `xdotool` and `xclip`. 
Use the following command to paste clipboard content to the selected window:

```bash
xclip -selection clipboard -out | tr \\n \\r | xdotool selectwindow windowfocus type --clearmodifiers --delay 25 --window %@ --file 
```

A version that immediately pastes to the active window is also available:

```bash
xclip -selection clipboard -out | tr \\n \\r | xdotool type --clearmodifiers --delay 25 --file -
```


## OSX
The Mac version is written in AppleScript. Run it using:

```apple
osascript -e 'tell application "System Events" to keystroke the clipboard as text'
```
To bind this to a keyboard shortcut, use built-in OSX utilities or third-party programs like BetterTouchTool, Keyboard Maestro, or Hammerspoon.

### Contributions
Contributions are welcome! If you find a bug, have an idea for an improvement, or want to contribute, open an issue or submit a pull request.

### License
This project is licensed under the GNU General Public License, version 2..