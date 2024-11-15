#!/bin/bash
LASTDIR=$(cat ~/.lastdir 2>/dev/null || echo "$HOME")
exec alacritty --working-directory "$LASTDIR"
