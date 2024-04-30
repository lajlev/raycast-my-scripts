#!/bin/bash
# @raycast.title Sharepoint Cactus
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Search in Sharepoint Cactus
# @raycast.icon 🔎

# @raycast.mode silent
# @raycast.packageName Browsing
# @raycast.schemaVersion 1
# @raycast.argument1 { "type": "text", "placeholder": "Search for file", "percentEncoded": true }

open "https://cactusglobal.sharepoint.com/sites/CACTUSLabs/Shared%20Documents/Forms/AllItems.aspx?FolderCTID=0x012000F6E35163D109DA47BF60C010D9910DD1&id=%2Fsites%2FCACTUSLabs%2FShared%20Documents%2FTribes%2FPaperpal&viewid=72b921fc%2Df93d%2D4654%2Dbfc4%2D903033c3e932&view=7&q=$1"
