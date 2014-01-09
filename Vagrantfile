# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :ansible do |ansible|
    ansible.vm.box = "Fedora-20"
    ansible.vm.box_url = "http://files.tfduesing.net/Fedora-20-x86_64-virtualbox.box"
    ansible.vm.network :forwarded_port, guest: 22, host: 20154,  id: "ssh", auto_correct: true
    ansible.vm.hostname = "ansible.box"
    ansible.vm.provider "virtualbox" do |v|
      v.name = "Ansible"
    end
    ansible.vm.provision "shell", path: "./bootstrap.sh"
    ansible.vm.synced_folder "./", "/vagrant", disabled: true
    ansible.vm.synced_folder "ansible/", "/etc/ansible"
  end
end
