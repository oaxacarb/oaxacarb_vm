# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial32"
  config.vm.hostname = 'oaxacarb'
  config.vm.box_url = "ubuntu/xenial32"

  config.vm.network :private_network, ip: "10.10.10.1"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--name", "oaxacarb"]
  end
end
