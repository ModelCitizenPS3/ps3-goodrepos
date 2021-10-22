#!/bin/bash
#
# 1. Install/Replace yum gpg keys.
# 2. Install/Replace yum repo files.
# 3. Perform update.
#

rm -fv /etc/pki/rpm-gpg/*
cp -v rpm-gpg/* /etc/pki/rpm-gpg/
rm -fv /etc/yum.repos.d/*
cp -v yum.repos.d/* /etc/yum.repos.d/
yum clean all
yum makecache
yum -y -x fedora-release -x rpmfusion-free-release -x rpmfusion-nonfree-release -x livna-release -x remi-release update
echo "exclude=fedora-release rpmfusion-free-release rpmfusion-nonfree-release livna-release remi-release" >> /etc/yum.conf
echo REBOOT
