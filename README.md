# Dotfiles

![screenshot](https://github.com/kevindurb/dotfiles/raw/master/screenshot.png)

## Dependencies
- vim >=8.0
- zsh >= 4.3.9

## Installation
1. clone the repo

    ```bash
    git clone <path_to_repo>
    cd dotfiles
    git submodule init && git submodule update
    ```

2. setup vim

    ```bash
    cd ~
    ln -s ~/dotfiles/vim .vim
    vim +PlugInstall +qa
    ```

3. setup zsh

    ```bash
    cd ~
    ln -s ~/dotfiles/zsh .zsh
    ln -s ~/dotfiles/zsh/zshrc .zshrc
    ln -s ~/dotfiles/zsh/zprofile .zprofile
    # restart your terminal to install plugins automagically
    ```

4. setup tmux

    ```bash
    cd ~
    ln -s ~/dotfiles/tmux .tmux
    ln -s ~/dotfiles/tmux/tmux.conf .tmux.conf
    # start up tmux and `C-a I` to install all the plugins
    ```

5. setup git

    ```bash
    cd ~
    ln -s ~/dotfiles/git/gitignore .gitignore
    ln -s ~/dotfiles/git/gitconfig .gitconfig
    ```

## Extras
Zsh config is pre-setup for a couple cool things
- nvm
- autojump
- base16
- fzf
- ripgrep
