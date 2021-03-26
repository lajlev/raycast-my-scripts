#!/usr/bin/osascript

# @raycast.title Play/Pause
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Radio Paradise

# @raycast.icon 📻
# @raycast.mode silent
# @raycast.packageName Radio Paradise
# @raycast.schemaVersion 1


tell application "System Events"
  
  if not (application process "Radio Paradise" exists) then
    activate application "Radio Paradise" 
  end if

  tell process "Radio Paradise"
    click menu item "Play" of menu "File" of menu bar 1
  end tell

end tell

log "✅"
