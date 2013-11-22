#!/usr/bin/env bash

user="$1"
user_dir="/home/$user"
synced_dir="$2"


echo ""
echo "*************************************************************************"
echo "  Updating and Installing Prerequisite Packages"
echo "*************************************************************************"
echo ""

/usr/bin/yum --assumeyes update yum
/usr/bin/yum --assumeyes --exclude=kernel* update

# python-devel is required to build the (optional) C extension for simplejson
/usr/bin/yum --assumeyes install python-pip python-devel

echo ""
echo "*************************************************************************"
echo "  Installing Ansible and pyrax"
echo "*************************************************************************"
echo ""

/usr/bin/yum --assumeyes install ansible

/usr/bin/pip install pyrax

# add symlink to ansible configuration directory
if [ ! -d "/etc/ansible.original/" ]; then
  mv /etc/ansible/ /etc/ansible.original/
  /usr/bin/ln --symbolic $synced_dir/ansible/ /etc/
fi


echo ""
echo "*************************************************************************"
echo "  There.  Now we’re done."
echo "*************************************************************************"
echo ""
