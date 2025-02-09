#!/bin/bash
#
# Script to replace yum repo configs installed by Fedora 12 (ppc) with working configs.
# Also invokes yum system update.
#
# Note: Only the fedora, fedora-updates, and fedora-updates-testing are enabled by default.
# Enable the others (RPM Fusion Free/Nonfree) by editing the files in /etc/yum.repos.d


if [ $(id -u) != 0 ]; then
    printf "Please run as root.\n"
    exit 1
fi

cp -fv rpm-gpg/RPM-GPG-KEY-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-12-primary
cp -fv rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-12-primary
cp -fv rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-12-primary

if [ -f "/etc/yum.repos.d/fedora-rawhide.repo" ]; then
    rm -fv /etc/yum.repos.d/fedora-rawhide.repo
fi

cp -fv yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo
cp -fv yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo
cp -fv yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo
cp -fv yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/rpmfusion-free.repo
cp -fv yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/rpmfusion-free-updates.repo
cp -fv yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/rpmfusion-nonfree.repo
cp -fv yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/rpmfusion-nonfree-updates.repo

yum clean all
yum makecache
yum -y update

printf "\nNEW KERNEL INSTALLED - YOU SHOULD REBOOT\n\nNOTE: Your PS3 may hang the first time it boots your new kernel (2.6.32.26).\nIf this happens, power off the PS3 with the power button and try booting the kernel a second time. It will work fine.\nI do not know why this happens.\n\n"

exit 0

