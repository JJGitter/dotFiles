#!/bin/bash

FILES=(
	"$HOME/.bashrc"
	"$HOME/.tmux.conf"
	"$HOME/repos/simemmy-scripts/.luarc.json"
	"$HOME/repos/simemmy-scripts/.rgignore"
	"$HOME/.gitconfig"
        "/mnt/c/Users/conjoej/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
	)

DEST_DIR=$(pwd)

echo "Backing up config files to $DEST_DIR..."

for FILE in "${FILES[@]}"; do
	if [ -f "$FILE" ]; then
		cp "$FILE" "$DEST_DIR"
		echo "Copied: $FILE"
	else
		echo "Skipped (not found): $FILE"
	fi
done
