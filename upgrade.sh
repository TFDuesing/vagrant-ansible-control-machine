#!/usr/bin/env bash

/usr/bin/yum update yum
/usr/bin/yum --exclude=kernel* update

/usr/bin/pip install --upgrade setuptools
/usr/bin/pip install --upgrade pip
/usr/bin/pip install --upgrade pyrax
