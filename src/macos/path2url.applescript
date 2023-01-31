tell application "Finder"
    set _sel to (get selection as alias list)
    set _urls to {}
    repeat with _file in _sel
        set _url to URL of _file
        set end of _urls to _url
    end repeat
    set AppleScript's text item delimiters to return
    set the clipboard to (_urls as string)
end tell