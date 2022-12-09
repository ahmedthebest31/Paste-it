#NoEnv          ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#NoTrayIcon     ; Hide the tray icon

^+v::Send {Raw}%Clipboard%