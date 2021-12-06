#! /bin/bash

userName=ErreKappa1
$HOME=/home/riky/Documents/Git/ErreKappa1/Managementthings

function errorKeys {
	echo
	echo Before set up the dotfiles using this script is MANDATORY to setup the\
		keys to access the git repos
	echo Press enter to continue...; read
	exit 1
}

function createLinks {
	rm -f $HOME/.bashrc
	rm -f $HOME/.bash_profile
	rm -f $HOME/.aliases
	rm -rf $HOME/.vim
	rm -f $HOME/.gitconfig
	ln -s $HOME/Documents/Git/$userName/Dotfiles/.bashrc $HOME/.bashrc
	ln -s $HOME/Documents/Git/$userName/Dotfiles/.bash_profile $HOME/.bash_profile
	ln -s $HOME/Documents/Git/$userName/Dotfiles/.aliases $HOME/.aliases
	ln -s $HOME/Documents/Git/$userName/Dotfiles/.gitconfig $HOME/.gitconfig
	ln -s $HOME/Documents/Git/$userName/Dotfiles/.vim $HOME/.vim
	#sudo echo 'set completion-ignore-case On' >> /etc/inputrc #just as a reference
}

clear
if [ -r $HOME/.ssh/id_rsa_github ]
then
	if [ -d $HOME/Documents/Git/$userName/ ]
	then
		cd $HOME/Documents/Git/$userName/
	else 
		mkdir -p $HOME/Documents/Git/$userName/
		cd $HOME/Documents/Git/$userName/
	fi
	git clone git@github.com:$userName/Dotfiles
	git clone git@github.com:$userName/Vi
	createLinks
else
	errorKeys
fi

