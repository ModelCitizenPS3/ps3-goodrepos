#!/bin/bash
#
# 1. Install/Replace yum gpg keys.
# 2. Install/Replace yum repo files.
# 3. Perform update.
#

rm -fv /etc/pki/rpm-gpg/*
cp -v rpm-gpg/RPM-GPG-KEY-fedora-12-primary /etc/pki/rpm-gpg/
cp -v rpm-gpg/RPM-GPG-KEY-livna /etc/pki/rpm-gpg/
cp -v rpm-gpg/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/
cp -v rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-12-primary /etc/pki/rpm-gpg/
cp -v rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-12-primary /etc/pki/rpm-gpg/

rm -fv /etc/yum.repos.d/*
cp -v yum.repos.d/fedora.repo /etc/yum.repos.d/
cp -v yum.repos.d/fedora-updates.repo /etc/yum.repos.d/
cp -v yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/
cp -v yum.repos.d/livna.repo /etc/yum.repos.d/
cp -v yum.repos.d/remi.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/
cp -v yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/

echo "exclude=fedora-release rpmfusion-free-release rpmfusion-nonfree-release livna-release remi-release" >> /etc/yum.conf

yum clean all
yum makecache
yum -y update

printf "\nREBOOT\n\n"

