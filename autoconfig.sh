#!/bin/bash

backup() {
    if test -e ~/.vimrc
    then
        mv ~/.vimrc ~/.vimrc.bak
    fi

    if test -e ~/.vim
    then
        mv ~/.vim ~/.vim.bak
    fi

    if test -e ~/.tmux.conf
    then
        mv ~/.tmux.conf ~/.tmux.conf.bak
    fi
}

install_tools() {
    for var in ack-grep ctags tmux
        if test `dpkg -s ${var}` -ne 0 
        then
            if test `sudo apt-get install ${var}` -eq 0
            then
                echo "install success !"
            else
                echo "install failed !"
            fi
        fi 
}

config_vim() {
    ln -s .vimrc ~/.vimrc
    ln -s .vim ~/.vim
    ln -s .tmux.conf ~/.tmux.conf

    echo "export TERM=screen-256color" >> ~/.bashrc
    source ~/.bashrc
}

backup
install_tools
config_vim
