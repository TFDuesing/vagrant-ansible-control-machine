vagrant-ansible-client
======================

A configuration and bootstrap file for a Vagrant machine running [Ansible][1] in Fedora 19 on VirtualBox.

(Nota bene: this is completely separate from [Vagrant’s Ansible provisioner][2].  In fact, this Vagrantfile uses the shell provisioner)


Prerequisites
-------------

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)


Installation
------------

	git clone https://github.com/TFDuesing/vagrant-ansible-client.git
	cd vagrant-ansible-client
	vagrant up

If Vagrant is new to you, you might want to read the [Up And SSH](http://docs.vagrantup.com/v2/getting-started/up.html) section of Vagrant’s Getting Started documentation for what to do next.


Configuration
-------------

Copy or move your `ansibe.conf` and `hosts` files into the ansible directory inside your project directory (which is most likely this very directory).

If you don’t have either of these files yet, you can use the default files from Fedora’s ansible package as a starting point.  To do this, just copy the contents of `/etc/ansible/` to `/vagrant/` inside of the VM.

For more information on Ansible’s .conf and hosts files, check out the docs:

* [The Ansible Configuration File][3]
* [Inventory][4]


Usage Notes
-----------

You’ll notice that the SSH forwarding port is static (it’s been set to a random unused port number, and told to work around any collisions).  This way, you can add this machine to your SSH config as a bit of a shortcut.  You can even run `vagrant ssh-config` to generate a SSH config blob for just this purpose.


[1]: http://www.ansibleworks.com/docs/
[2]: http://docs.vagrantup.com/v2/provisioning/ansible.html
[3]: http://www.ansibleworks.com/docs/intro_configuration.html
[4]: http://www.ansibleworks.com/docs/intro_inventory.html