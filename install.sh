#!/bin/bash

function create_link() {
  FILE=$1

  THEME_PATH=/Users/yuta.yoshiike/Library/Application\ Support/LimeChat/Themes
  TARGET=$THEME_PATH/$FILE

  if [ -f "$TARGET" ]; then
    echo "    already exists: $TARGET"
  else
    ln -s ./$FILE $TARGET
    echo "    ln -s ./$FILE $TARGET"
  fi
}

echo "create_links"
create_link easy-black.css
create_link easy-black.yaml
echo "done"

