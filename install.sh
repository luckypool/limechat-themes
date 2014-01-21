#!/bin/bash

function create_link() {
  FILE=$1

  THEME_PATH=/Users/$(whoami)/Library/Application\ Support/LimeChat/Themes
  TARGET="$THEME_PATH/$FILE"
  FROM="$(pwd)/$FILE"

  if [ -f "$TARGET" ]; then
    echo "    already exists: $TARGET"
  else
    ln -s $FROM "$TARGET"
    echo "    ln -s $FROM $TARGET"
  fi
}

echo "create_links"
create_link easy-black.css
create_link easy-black.yaml
echo "done"

