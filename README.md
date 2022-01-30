# goodrepos-fc12

Fedora 12 ppc/ppc64 YUM Repos Script

This script is meant to be run on a fresh install of Fedora 12 for PowerPC. It completely replaces all broken YUM repo configs (left over from OS install) with working ones. It also installs all corresponding GPG-KEY files for the repos. It then makes YUM rebuild it's metadata cache and executes a system update.


INSTRUCTIONS:

1. Clone repo: git clone git://github.com/ModelCitizenPS3/good-fc12.git (Don't use the https link, it won't work. Fedora 12 SSL certs are too old.)

2. Enter cloned directory: cd ppcrepos-fc12

3. Run script with root privileges: sudo ./ppcrepos.sh


REPOSITORIES INCLUDED:

Fedora 12 (Base), Fedora 12 Updates, Fedora 12 Updates Testing, Livna Repo, Remi Repo, RPM Fusion Free, RPM Fusion Free Updates, RPM Fusion Free Updates Testing, RPM Fusion Nonfree, RPM Fusion Nonfree Updates, RPM Fusion Nonfree Updates Testing


NOTE:

Repos designated as "testing" not enabled by default.

I use this script to speed up Fedora 12 (re)deployment on my OtherOS Playstation 3.

