#!/usr/bin/osascript

# @raycast.title Password Cactus
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Login in with username and password

# @raycast.icon ??
# @raycast.mode silent
# @raycast.packageName Systems
# @raycast.schemaVersion 1

# Requirement: Set password
# > security add-generic-password -l "Raycast password" -a "RaycastPassword" -s "raycast password" -w "SomeAwe$omePa$$w0rd"

set getPass to do shell script "security find-generic-password -a 'cactus' -w"


tell application "System Events"
  keystroke getPass
end tell
