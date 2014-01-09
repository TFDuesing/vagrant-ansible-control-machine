#!/usr/bin/env sh


echo ""
echo "********************************************************************************"
echo "  Updating and Installing Prerequisite Packages"
echo "********************************************************************************"
echo ""

yum --assumeyes update yum
yum --assumeyes --exclude=kernel* update

# python-devel is required to build the (optional) C extension for simplejson
yum --assumeyes install python-pip python-devel


echo ""
echo "********************************************************************************"
echo "  Installing Ansible and pyrax"
echo "********************************************************************************"
echo ""

yum --assumeyes install ansible

pip install pyrax


echo ""
echo "********************************************************************************"
echo "  There.  Now we’re done."
echo "********************************************************************************"
echo ""
