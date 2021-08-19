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
  set frontmostApplicationName to name of 1st process whose frontmost is true

  if not (application process "Radio Paradise" exists) then
    activate application "Radio Paradise"
  else
    activate application "Radio Paradise"
    key code 49 -- space bar
    activate application frontmostApplicationName
  end if

end tell

log "✅"
