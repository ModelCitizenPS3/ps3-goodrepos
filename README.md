# ps3-goodrepos

I wrote this script to run on my Playstation 3 after a fresh install of Fedora 12 for PowerPC (via the PS3's OtherOS featue). It replaces all original (broken) yum repo configs file (including GPG-KEYS) with working ones. It then invokes yum to rebuild its metadata cache from the updated repo configs. Lastly, it executes a yum system update.

## INSTRUCTIONS

1. Clone git repo to Playstation 3 (running Fedora 12 for PowerPC) anywhere in file system: `git clone https://ModelCitizenPS3/ps3-goodrepos.git`

2. Enter cloned directory: cd goodrepos-fc12

3. Run script with root privileges: sudo ./goodrepos.sh

## REPOSITORIES INCLUDED

Fedora 12 (Base), Fedora 12 Updates, Fedora 12 Updates Testing, Livna Repo, Remi Repo, RPM Fusion Free, RPM Fusion Free Updates, RPM Fusion Free Updates Testing, RPM Fusion Nonfree, RPM Fusion Nonfree Updates, RPM Fusion Nonfree Updates Testing

## NOTE

Repos designated as "testing" not enabled by default.

I use this script to speed up Fedora 12 (re)deployment on my OtherOS Playstation 3.

