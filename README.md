# ps3-goodrepos

I wrote this script to run on my Playstation 3 (OtherOS) after a fresh install of Fedora 12 (ppc). It deletes all broken yum repo configs (including all RPM-GPG keys) installed by Fedora and replaces them with ones that work. It then invokes yum to rebuild its cache and executes a system update.

## INSTRUCTIONS

1. Clone repo: `git clone https://github.com/ModelCitizenPS3/ps3-goodrepos.git`
2. Copy repo dir **ps3-goodrepos** to Playstation 3 (or any machine running Fedora 12 for PowerPC - script will work the same).
3. Enter cloned repo dir: `cd ps3-goodrepos`
4. Run script with root privileges: `sudo ./ps3-goodrepos.sh`

## REPOSITORIES INCLUDED

- Fedora 12 ppc
- Fedora 12 Updates ppc
- Fedora 12 Updates Testing ppc
- Livna RPMs ppc
- Remi Repo ppc
- RPM Fusion Free for Fedora 12 ppc
- RPM Fusion Free Updates for Fedora 12 ppc
- RPM Fusion Free Updates Testing for Fedora 12 ppc
- RPM Fusion Nonfree for Fedora 12 ppc
- RPM Fusion Nonfree Updates for Fedora 12 ppc
- RPM Fusion Nonfree Updates Testing for Fedora 12 ppc

## NOTE

Only repositories "Fedora 12 ppc" and "Fedora 12 Updates ppc" are enabled by default. You will have to enable the others manually, should you so choose.

I use this script to speed up Fedora 12 (re)deployment on my (jailbroke) Playstation 3 web server (at [http://ps3linux.net](http://ps3linux.net) - yes... I bought an actual domain for my PS3... because I'm nuts).

**The Model Citizen**

