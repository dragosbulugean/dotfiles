# -*- mode: ruby -*- 
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.12.12"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "public_network"

  config.ssh.username = "vagrant"

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "1024"
  end

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo apt-get update
    sudo apt-get -y upgrade
    sudo apt-get install -y wget zsh git vim
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo chsh -s /bin/zsh
    wget -q https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
    tar -xvf go1.7.3.linux-amd64.tar.gz
    sudo mv go /usr/local
    echo '\nexport PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.zshrc
    mkdir ~/go ~/go/bin ~/go/pkg/ ~/go/src
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
    export NVM_DIR="/home/vagrant/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    nvm install v7.2.1
    npm i -g yarn
    git clone https://github.com/dragosbulugean/dotfiles.git

  SHELL

end
