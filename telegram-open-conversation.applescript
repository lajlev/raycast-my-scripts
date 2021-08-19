#!/usr/bin/osascript

# Dependency: This script requires Telegram to be installed: https://www.telegram.org

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search Telegram
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/messenger.png
# @raycast.packageName Telegram
# @raycast.argument1 { "type": "text", "placeholder": "Name" }

# Documentation:
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev

on run argv

	### Configuration ###

	set keystrokeDelay to 2.5
	set conversationKeystrokeDelay to 0.5

	### End of configuration ###

	if application "Telegram" is running then
		do shell script "open -a Telegram"
	else
		do shell script "open -a Telegram"
		delay keystrokeDelay
	end if

	tell application "System Events" to tell process "Telegram"
		keystroke "f" using {shift down, command down}
		keystroke item 1 of argv
		delay conversationKeystrokeDelay
		key code 36
	end tell

end run
