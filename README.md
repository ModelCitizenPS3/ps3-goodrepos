# fedora-12-ppc-reposcript

Fedora 12 (Linux) for PowerPC (ppc/ppc64) YUM Repos Script

This script is meant to be run on a fresh install of PowerPC Fedora 12.
It completely replaces all broken YUM repo configs (left over from install) with working ones.
It also install all corresponding GPG-KEY files for the repos.
It then makes YUM rebuild it's metadata cache and executes a system update.
Must be run with root privileges.

Repositories Included/Installed:
  Fedora 12 (Base)
  Fedora 12 Updates
  Fedora 12 Updates Testing
  Livna Repo
  Remi Repo
  RPM Fusion Free
  RPM Fusion Free Updates
  RPM Fusion Free Updates Testing
  RPM Fusion Nonfree
  RPM Fusion Nonfree Updates
  RPM Fusion Nonfree Updates Testing

to clone: git clone git://github.com/ModelCitizenPS3/fedora-12-ppc-reposcript.git
(don't use https link, it won't work)

I use this script to speed up Fedora 12 (re)deployment on my OtherOS Playstation 3
