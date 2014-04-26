# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. 
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :shell, path: "update-apt.sh" 
  config.vm.provision :shell, path: "install-iftop.sh"

  config.vm.define "tmux" do |tmux|
      tmux.vm.hostname = "tmux"
      tmux.vm.provision :shell, path: "install-tmux.sh"
      tmux.vm.network :private_network, ip: "192.168.44.15"
      tmux.vm.provider "virtualbox" do |v|
          v.name = "msal.tmux"
      end
  end
end
