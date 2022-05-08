# ps3-goodrepos

I wrote this script to run on my Playstation 3 (OtherOS) after a fresh install of Fedora 12 (ppc). It deletes all broken yum repo configs (including all RPM-GPG keys) installed by Fedora and replaces them with ones that work. It then invokes yum to build its metadata cache. Lastly, it executes a yum system update.

## INSTRUCTIONS

1. Clone `ps3-goodrepos` to your Playstation 3 (or any machine running Fedora 12 for PowerPC, really): `git clone https://github.com/ModelCitizenPS3/ps3-goodrepos.git`

2. Enter cloned repo directory: `cd ps3-goodrepos`

3. Run script with root privileges: `sudo ./ps3-goodrepos.sh`

## REPOSITORIES INCLUDED

1. Fedora 12 ppc
2. Fedora 12 Updates ppc
3. Fedora 12 Updates Testing ppc
4. Livna RPMs ppc
5. Remi Repo ppc
6. RPM Fusion Free for Fedora 12 ppc
7. RPM Fusion Free Updates for Fedora 12 ppc
8. RPM Fusion Free Updates Testing for Fedora 12 ppc
9. RPM Fusion Nonfree for Fedora 12 ppc
10. RPM Fusion Nonfree Updates for Fedora 12 ppc
11. RPM Fusion Nonfree Updates Testing for Fedora 12 ppc

## NOTE

Only repositories "Fedora 12 ppc" and "Fedora 12 Updates ppc" are enabled by default. You will have to enable the others manually, should you so choose. I use this script to speed up Fedora 12 (re)deployment on my PS3 Enterprise Linux web server. Seriously! Open up a browser and type in `ps3linux.net`. That website totally lives on my jailbroke Playstation 3 game console in my room in New Jersey; and its always on. Cool, right?

