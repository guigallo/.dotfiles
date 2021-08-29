#!/bin/zsh

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="bash,dunst,git,i3,npm,nvim,ranger,rofi,Xresources,zsh"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi
echo $foldern

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	stow -Dvt ~ $folder
done
popd

source ~/.zsh
