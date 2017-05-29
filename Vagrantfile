# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu1604"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "data", "/vagrant_data"
  config.vm.synced_folder "c:/test", "/home/vagrant/test"

  config.vm.provision "shell", :path => "provision.sh", :privileged => false
end
