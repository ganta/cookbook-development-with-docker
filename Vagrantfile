# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.hostname = "ubuntu-docker"
  config.vm.box = "opscode-ubuntu-13.10"
  config.vm.network :private_network, ip: "192.168.50.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "2"]
  end

  config.vm.provision :docker do |docker|
    docker.pull_images "ubuntu"
  end

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.add_recipe "docker-completion"
    chef.add_recipe "kitchen-docker"
  end
end
