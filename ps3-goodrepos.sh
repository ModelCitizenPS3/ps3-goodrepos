#!/bin/bash
#
# Script to replace yum repo configs installed by Fedora 12 (ppc) with working configs.
# Also invokes yum system update.
#
# RUN AS ROOT: sudo ./ps3-goodrepos.sh
#
# Note: Only the fedora, fedora-updates, fedora-updates-testing, and remi repos are enabled by default.
# Enable the others (RPM Fusion and ps3linux repos) yourself by editing the files in /etc/yum.repos.d
#

if [ $(id -u) != 0 ]; then
    printf "Please run as root.\n"
    exit 1
fi

cp -fv rpm-gpg/RPM-GPG-KEY-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-12-primary
cp -fv rpm-gpg/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
cp -fv rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-fedora-12-primary
cp -fv rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-12-primary /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-nonfree-fedora-12-primary

if [ -f "/etc/yum.repos.d/fedora-rawhide.repo" ]; then
    rm -fv /etc/yum.repos.d/fedora-rawhide.repo
fi

cp -fv yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo
cp -fv yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo
cp -fv yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo
cp -fv yum.repos.d/remi.repo /etc/yum.repos.d/remi.repo
cp -fv yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/rpmfusion-free.repo
cp -fv yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/rpmfusion-free-updates.repo
cp -fv yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo
cp -fv yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/rpmfusion-nonfree.repo
cp -fv yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/rpmfusion-nonfree-updates.repo
cp -fv yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo
cp -fv yum.repos.d/ps3linux.repo /etc/yum.repos.d/ps3linux.repo

yum clean all
yum makecache
yum -y update

printf "\nNEW KERNEL INSTALLED. YOU SHOULD REBOOT\n\nNOTE: If your PS3 freezes the first time you boot your new kernel (2.6.32.26), simply power off the PS3 and try booting the new kernel again.\nIt should boot fine after.\nI do not know why this is the case.\n\n"

exit 0

