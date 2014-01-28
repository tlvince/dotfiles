#!/bin/sh
# Initialise dotfiles.
# © 2013 Tom Vincent <http://tlvince.com/contact>

_have() { command -v "$1" >/dev/null 2>&1; }
_info() { echo "$0: $1"; }
_error() { _info "$1"; exit 1; }
_usage() { echo "usage: $0 [package  ...]"; exit; }
_prompt() { read -p "$1 [y/n] "; [ "$REPLY" == "y" ] || exit 1; }

[ "$1" == "-h" ] || [ "$1" == "--help" ] &&  _usage

_have "stow" || _error "Requires 'stow'"
[ "$DOTFILES" ] || _error "Set DOTFILES to the dotfiles path"

packages="$@"
[ "$packages" ] || packages=$(echo $DOTFILES/*/ | sed "s_$DOTFILES/__g")

ignores='^.git(modules|ignore|keep)$|readme.m(d|kd)|.DS_Store|init.sh|.brew|.cask|.swp'
stow="stow --verbose --dir="$DOTFILES" --target="$HOME" --ignore="$ignores""

$stow --simulate $packages
_prompt "Looks okay?"
$stow $packages
