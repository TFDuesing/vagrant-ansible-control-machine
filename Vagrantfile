# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :ansible do |ansible|
    ansible.vm.box = "fedora19"
    ansible.vm.box_url = "http://files.tfduesing.net/Fedora-19-x86_64-vbox.box"
    ansible.vm.network :forwarded_port, guest: 22, host: 20154,  id: "ssh", auto_correct: true
    ansible.vm.hostname = "ansible.vbox"
    ansible.vm.provision :shell do |s|
      s.path = "bootstrap.sh"
      # assuming the values of config.ssh.default.username and config.vm.synced_folder for this box
      s.args = "vagrant /vagrant"
    end
  end
  config.vm.provider "virtualbox" do |ansible|
    ansible.vm.name = "Ansible"
  end
end
