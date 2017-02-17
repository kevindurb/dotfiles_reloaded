FROM ubuntu:latest

ENV TERM screen-256color

# install base apps
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN add-apt-repository ppa:jonathonf/vim
RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y tmux
RUN apt-get install -y zsh
RUN apt-get install -y vim
RUN apt-get install -y openssh-server

# setup ssh
RUN mkdir /var/run/sshd

# setup home directory
RUN mkdir /home/kevindurb

# setup kevindurb user
RUN useradd kevindurb
RUN chown kevindurb /home/kevindurb
USER kevindurb
WORKDIR /home/kevindurb
ENV HOME /home/kevindurb

# add dotfiles
RUN mkdir /home/kevindurb/dotfiles
ADD ./ ~/dotfiles

# setup dotfiles
RUN ln -s ~/dotfiles/gitconfig      ~/.gitconfig
RUN ln -s ~/dotfiles/gitignore      ~/.gitignore
RUN ln -s ~/dotfiles/zsh/zshrc      ~/.zshrc
RUN ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.config
RUN ln -s ~/dotfiles/zprofile       ~/.zprofile
RUN ln -s ~/dotfiles/vim            ~/.vim
RUN ln -s ~/dotfiles/tmux           ~/.tmux

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
