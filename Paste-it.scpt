try
    tell application "System Events" to keystroke "c" using {command down}
    display notification "Copying to the clipboard completed successfully." with title "Script Success"
on error errMsg
    display alert "Error: " & errMsg & return & "Unable to copy to the clipboard. Please check if the selected text is copyable." as critical
end try
