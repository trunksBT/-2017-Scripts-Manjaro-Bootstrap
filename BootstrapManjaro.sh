#!/bin/bash 

PATH_TO_VIMRC = 'https://github.com/ProjectsInCpp/-2016-Vim-.git'

function set_ssh {
}

function update_software {
    sudo pacman --sync --refresh
    sudo pacman --sync --sysupgrade
    reboot
}

function install_new_software{
    sudo pacman --sync vim
    sudo pacman --sync terminator
    sudo pacman --sync git
}

function remove_artifacts{
    rm -rf -- -2016-Vim-
}

function setup_vim{
    git clone $PATH_TO_VIMRC
    cd -- -2016-Vim-
    rm -rf ~/.vimrc ~/.vim
    cp --force .vimrc ~/.vimrc
    cp --force --recursive .vim ~/.vim
    cd ,,
    remove_artifacts
}

function install_compilers{
    sudo pacman -S ocaml
    sudo pacman -S rlwrap
    sudo pacman -S scala
}

function remap_pageup_and_pagedown{
    echo 'open /etc/inputrc'
    echo '"\e[5~": history-search-backward'
    echo '"\e[6~": history-search-forward'
}

# update_software
# install_compilers
# set_ssh 
# install_new_software
# setup_vim
# install_compilers
# remap_pageup_and_pagedown
