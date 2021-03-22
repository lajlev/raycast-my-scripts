#!/usr/bin/osascript

# @raycast.title Login SOS
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Login in with username and password

# @raycast.icon ??
# @raycast.mode silent
# @raycast.packageName Systems
# @raycast.schemaVersion 1

set getPass to do shell script "security find-generic-password -s 'sos-password' -a 'sosdaljv' -w"
delay 1.0

tell application "System Events"
  keystroke "sosdaljv"
  delay 0.5
  keystroke tab
  delay 0.5
  keystroke getPass
  delay 0.5
  keystroke return
end tell