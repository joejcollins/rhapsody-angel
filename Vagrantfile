# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "jekyll"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.synced_folder ".", "/vagrant"

  # Vagrant's name for the Virtual Machine
  config.vm.define "rhapsody-angel" do |ra|
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "rhapsody-angel" # shows in Virtual Box GUI
    vb.gui = true # Display the VirtualBox GUI when booting the machine
    vb.memory = "1024" # Customize the amount of memory on the VM
  end

  # Install Ansible using PIP so we can specify an old version
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/Vagrantfile-ansible.yml"
  end
end
