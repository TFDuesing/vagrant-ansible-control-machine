vagrant-ansible-control-machine
===============================

A configuration and bootstrap file for a Vagrant machine running [Ansible][1] in Fedora 20 on VirtualBox.

(Nota bene: this is completely separate from [Vagrant’s Ansible provisioner][2].  In fact, this Vagrantfile uses the [shell provisioner][3])


Prerequisites
-------------

* [VirtualBox][4]
* [Vagrant][5]


Installation
------------

	git clone https://github.com/TFDuesing/vagrant-ansible-control-machine.git
	cd vagrant-ansible-control-machine
	vagrant up

If Vagrant is new to you, you might want to read the [Up and SSH](http://docs.vagrantup.com/v2/getting-started/up.html) section of Vagrant’s Getting Started documentation for what to do next.


Configuration
-------------

Copy or move your `ansibe.conf` and `hosts` files into the `ansible/` directory inside your project directory (which is most likely this very directory).

If you don’t have either of these files yet, you can use the default files from Fedora’s ansible package as a starting point.  To do this, SSH in to the machine and copy the contents of `/etc/ansible/` to `/vagrant/`.

For more information on Ansible’s .conf and hosts files, check out the docs:

* [The Ansible Configuration File][6]
* [Inventory][7]


Usage Notes
-----------

You’ll notice that Vagrant’s SSH forwarding port is static (it’s been set to a random unused port number, and told to work around any collisions).  This way, you can add this machine to your SSH config as a bit of a shortcut.  You can even run `vagrant ssh-config` to generate a SSH config blob for just this purpose.

I’d also recommend enabling [SSH agent forwarding][8] so that you don’t have to store any SSH keys inside the machine.  Just set `ForwardAgent yes` in the aforementioned SSH config, and you’re good to go.


[1]: http://docs.ansible.com/
[2]: http://docs.vagrantup.com/v2/provisioning/ansible.html
[3]: http://docs.vagrantup.com/v2/provisioning/shell.html
[4]: https://www.virtualbox.org
[5]: http://www.vagrantup.com
[6]: http://docs.ansible.com/intro_configuration.html
[7]: http://docs.ansible.com/intro_inventory.html
[8]: http://www.unixwiz.net/techtips/ssh-agent-forwarding.html
