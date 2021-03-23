#!/usr/bin/osascript

# @raycast.title Jira
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description SOS International

# @raycast.icon 🐴
# @raycast.mode silent
# @raycast.packageName Systems
# @raycast.schemaVersion 1

tell application "Google Chrome"
    repeat with w in windows
        set i to 1
        repeat with t in tabs of w
            if URL of t starts with "https://jira.sos.eu/secure/RapidBoard.jspa" then
                set active tab index of w to i
                set index of w to 1
                return
            end if
            set i to i + 1
        end repeat
    end repeat
    open location "https://jira.sos.eu/secure/RapidBoard.jspa?rapidView=155&projectKey=EUX&selectedIssue=EUX-2285&quickFilter=1475"
end tell