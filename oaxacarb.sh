#!/bin/sh

# Installation as superuser

sudo apt-get -y install language-pack-es
sudo apt-get -y install tmux
sudo apt-get -y install zsh curl

# Installation as regular user

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo chsh -s /bin/zsh ubuntu 
zsh

# Install Java
sudo apt-get install default-jdk

# Install Oracle Java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

# Install Elixir

wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get -y update
sudo apt-get -y install esl-erlang
sudo apt-get -y install elixir
