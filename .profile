#!/bin/sh

# Profile file. Runs on login.

export PATH="$PATH:$HOME/.scripts"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="linkhandler"
export TRUEBROWSER="chromium"
export READER="zathura"
export BIB="$HOME/Documents/LaTeX/uni.bib"

[ -f ~/.scripts/shortcuts.sh ] && ~/.scripts/shortcuts.sh

[ -f ~/.bashrc ] && source ~/.bashrc

# Start graphical server if i3 not already running.
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi

# Switch escape and caps and use wal colors if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
wal -Rn
