#!/bin/bash
# @raycast.title Searchable
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Search in Searchable.ai 
# @raycast.icon 🔎

# @raycast.mode silent
# @raycast.packageName Browsing
# @raycast.schemaVersion 1
# @raycast.argument1 { "type": "text", "placeholder": "What are you looking for?", "percentEncoded": true }

open "https://app.searchable.cloud/home?tab=results&query=$1"
