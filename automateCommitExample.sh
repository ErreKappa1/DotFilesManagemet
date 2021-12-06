#! /bin/bash

dotFiles=(".aliases" ".bash_profile" ".bashrc" ".git" ".gitconfig" "MoooPanel.tar.gz" ".tmux.conf" ".vim" ".xinitrc" ".Xresources" ".zshrc")

while true
do
		inotifywait -qq -e CLOSE_WRITE $HOME/Documents/Git/ErreKappa1/Dotfiles/.bashrc
		cd $HOME/Documents/Git/ErreKappa1/Dotfiles/
		git add .
		git commit -m "Modified Stuffs"
		git push
		echo Done...
done
