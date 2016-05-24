FROM ubuntu:16.04

ENV TERM screen-256color

# install base apps
RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:neovim-ppa/unstable
RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y tmux
RUN apt-get install -y zsh
RUN apt-get install -y neovim
RUN apt-get install -y python-dev
RUN apt-get install -y python-pip
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

# use neovim for everything
RUN update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
RUN update-alternatives --config vi
RUN update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
RUN update-alternatives --config vim
RUN update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
RUN update-alternatives --config editor

# setup home directory
RUN mkdir /home/dev
RUN mkdir /home/dev/bin
RUN mkdir /home/dev/dotfiles
RUN mkdir /home/dev/.config

# setup dev user
RUN useradd dev
ENV PATH /home/dev/bin:$PATH

# add dotfiles
ADD ./ /home/dev/dotfiles

# setup dotfiles
RUN ln -s /home/dev/dotfiles/gitconfig    /home/dev/.gitconfig
RUN ln -s /home/dev/dotfiles/gitignore    /home/dev/.gitignore
RUN ln -s /home/dev/dotfiles/nvim         /home/dev/.config/nvim
RUN ln -s /home/dev/dotfiles/zsh          /home/dev/.config/zsh
RUN ln -s /home/dev/dotfiles/tmux         /home/dev/.config/tmux
RUN ln -s /home/dev/.config/zsh/init.zsh  /home/dev/.zshrc
RUN ln -s /home/dev/.config/tmux/init.zsh /home/dev/.tmux.config
RUN ln -s /home/dev/dotfiles/zprofile     /home/dev/.zprofile
RUN ln -s /home/dev/dotfiles/nvim         /home/dev/.vim

# set owner correctly
RUN chown -R dev /home/dev

# switch to dev user
USER dev
WORKDIR /home/dev
ENV HOME /home/dev

ENTRYPOINT ["/bin/zsh"]
