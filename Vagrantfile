# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "hyperv" do |provider|
    provider.memory = 2048
    provider.vmname = "devvm"
    provider.cpus = 2
  end
  config.vm.box = "hashicorp/precise64"
  config.vm.network "public_network"
  config.vm.synced_folder 'shared', '/vagrant', type: 'smb', owner: 'vagrant', group: 'www-data', mount_options: ["mfsymlinks,dir_mode=0775,file_mode=0664"]
  config.vm.network "forwarded_port", guest: 2022, host: 22
  config.vm.provision "shell", path: "bootstrap.sh", privileged: true
end
