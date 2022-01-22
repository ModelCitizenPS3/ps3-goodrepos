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
echo "exclude=fedora-release rpmfusion-free-release rpmfusion-nonfree-release livna-release remi-release" >> /etc/yum.conf
yum -y update
echo REBOOT

