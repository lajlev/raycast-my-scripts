#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy Songlink for Current Spotify Track
# @raycast.mode silent
# @raycast.packageName Spotify

# Documentation:
# @raycast.author Rasmus Kjær
# @raycast.authorURL https://github.com/rkjaer
# @raycast.description Get Songlink for current Spotify track

tell application "Spotify"
	set spotifyId to id of the current track
end tell

set AppleScript's text item delimiters to ":"
set idPart to third text item of spotifyId

set the clipboard to ("https://song.link/s/" & idPart)
log "Copied to clipboard"
