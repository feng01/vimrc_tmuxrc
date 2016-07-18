# Auto config vim and tmux

#!/bin/sh

backup_config() {
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

config_vim () {
    cp .vimrc ~
    cp -r .vim ~
}

config_tmux () {
    cp .tmux.conf ~
}

back_config
config_vim
config_tmux
