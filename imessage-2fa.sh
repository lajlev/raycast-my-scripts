#!/bin/bash

### Requires Raycast to have Full Disk Access:
### https://spin.atomicobject.com/2020/05/22/search-imessage-sql/

## WIP: Current don't work

# @raycast.title Fetch last message from iMessages
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Get most recent two-factor authentication code from Messages.

# @raycast.icon 🔐
# @raycast.mode silent
# @raycast.packageName Login
# @raycast.schemaVersion 1

sqlite_path="$HOME/Library/Messages/chat.db"
query=" 
SELECT
    datetime (message.date / 1000000000 + strftime ("%s", "2001-01-01"), "unixepoch", "localtime") AS message_date,
    message.text,
    message.is_from_me,
    chat.chat_identifier
FROM
    chat
    JOIN chat_message_join ON chat. "ROWID" = chat_message_join.chat_id
    JOIN message ON chat_message_join.message_id = message. "ROWID"
WHERE
    message.text like '%PASSCODE%'
ORDER BY
    message_date ASC;
LIMIT 1
"

while read -r line; do  
    
    echo $line
    
done <<< "$(sqlite3 $sqlite_path "$query")"

echo 'No two factor authentication codes found'