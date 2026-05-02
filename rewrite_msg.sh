#!/bin/bash
msg=$(cat "$1")

if [[ "$msg" == *"first commit"* ]]; then
    new_msg="feat: initial wedding website structure"
elif [[ "$msg" == *"margins"* && "$msg" != *"updated margins"* ]]; then
    new_msg="style: adjust CSS margins for better layout"
elif [[ "$msg" == *"removed emoji"* ]]; then
    new_msg="style: remove unnecessary emoji from texts"
elif [[ "$msg" == *"changed divider"* ]]; then
    new_msg="style: update section divider appearance"
elif [[ "$msg" == *"images"* ]]; then
    new_msg="feat: add wedding-related images to assets"
elif [[ "$msg" == *"update img, text and email"* ]]; then
    new_msg="docs: update couple image, intro text, and contact email"
elif [[ "$msg" == *"updated margins and image"* ]]; then
    new_msg="style: update layout margins and hero image"
elif [[ "$msg" == *"update image on desktop"* ]]; then
    new_msg="style: adjust desktop image presentation"
elif [[ "$msg" == *"diverse info uppdaterad"* ]]; then
    new_msg="docs: update miscellaneous wedding information"
else
    new_msg="$msg"
fi

echo "$new_msg" > "$1"
