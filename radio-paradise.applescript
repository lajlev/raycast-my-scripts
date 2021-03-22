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
  tell process "Radio Paradise"
    click menu item "Play" of menu "File" of menu bar 1
  end tell
end tell

log "✅"

