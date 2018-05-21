FROM ubuntu:18.04

ENV TERM screen-256color

# install base
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN add-apt-repository ppa:jonathonf/vim
RUN apt-get update -y

# setup ssh
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# setup kevindurb user
RUN mkdir /home/kevindurb
RUN useradd kevindurb
RUN echo 'kevindurb:pass1234' | chpasswd
RUN chown kevindurb /home/kevindurb
# USER kevindurb
# WORKDIR /home/kevindurb
# ENV HOME /home/kevindurb

# add dotfiles
RUN mkdir /home/kevindurb/dotfiles
ADD ./ /home/kevindurb/dotfiles

# setup dotfiles
# RUN ~/dotfiles/scripts/install.sh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
