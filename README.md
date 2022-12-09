# Paste-it
 program to paste clipboard content in protected Fields

It "types" the contents of the clipboard.

Why can't you just paste the contents you ask?  Sometimes pasting just doesn't work.
* One example is in system password fields on OSX.
* Sometimes you're working in a VM and the clipboard isn't shared.
* Other times you're working via Remote Desktop and again, the clipboard doesn't work in password boxes such as the system login prompts.
* Connected via RDP and clipboard sharing is disabled and so is mounting of local drives.  If the system doesn't have internet access there's no easy way to get things like payloads or Powershell scripts onto it... until now.

## Windows
The Windows version is written in [AutoHotKey](https://www.autohotkey.com/) 
just download the "Paste-it.exe" exe file and run it 
you should have it in the    tray icons
win + V
to paste the clipboard content in the active program



##to makje it auto start with windows:
open the Run box and type "shell:startup" and put a shortcut in this folder  
done

mac and linux will come soon