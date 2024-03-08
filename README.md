# Paste-it

A program that pastes the contents of the clipboard in protected fields as keystrokes.


## Purpose:
Sometimes, pasting the clipboard content isn't possible due to various reasons such as:

- System password fields on OSX.
- Using a virtual machine where the clipboard isn't shared.
- Remote Desktop where the clipboard doesn't work in password fields.
- Connected via RDP with disabled clipboard sharing and local drives.
-  VNC sessions and when dealing with VMs through  a host computer.


## Usage
  just  Focus to the target window. Press `Ctrl + Shift + V`. Your clipboard contents should be typed as keystrokes onto the selected window.


## download
you can download it for  any platform in the ["releases section"](https://github.com/ahmedthebest31/Paste-it/releases). 

## Windows
The Windows version is written in AutoHotKey and can be run by downloading the "Paste-it.exe" file. Access it from the tray icons and use the `Win + V` shortcut to type the clipboard text.


To make it auto-start with Windows, place a shortcut in the startup folder (open the Run box and type `shell:startup`).



## Linux
The Linux version just a bash script you can bind it to any shortcut you want 
it  requires `xdotool` and `xclip` to be installed. 


## OSX
The Mac version is written in AppleScript. Run it using:


To bind this to a keyboard shortcut, use built-in OSX utilities or third-party programs like BetterTouchTool, Keyboard Maestro, or Hammerspoon.

### Contributions
Contributions are welcome! If you find a bug, have an idea for an improvement, or want to contribute, open an issue or submit a pull request.



### License



This project is licensed under the GNU General Public License, version 2..