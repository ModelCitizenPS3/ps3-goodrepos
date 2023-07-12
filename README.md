# ps3-goodrepos

I wrote this script to run on my Playstation 3 (OtherOS) after a fresh install of Fedora 12 (ppc64). It deletes all broken yum repo configs (including all RPM-GPG keys) installed by Fedora and replaces them with ones that work. It then invokes yum to rebuild its cache and executes a system update.

## INSTRUCTIONS

1. Clone repo: `git clone https://github.com/ModelCitizenPS3/ps3-goodrepos.git`
2. Copy repo dir **ps3-goodrepos** to Playstation 3 (or any machine running Fedora 12 for PowerPC - script will work the same).
3. Enter cloned repo dir: `cd ps3-goodrepos`
4. Run script with root privileges: `sudo ./ps3-goodrepos`

## REPOSITORIES INCLUDED

- Fedora 12
- Fedora 12 Updates
- Fedora 12 Updates Testing
- Remi Repo
- RPM Fusion Free for Fedora 12 (disabled by default)
- RPM Fusion Free Updates for Fedora 12 (disabled by default)
- RPM Fusion Free Updates Testing for Fedora 12 (disabled by default)
- RPM Fusion Nonfree for Fedora 12 (disabled by default)
- RPM Fusion Nonfree Updates for Fedora 12 (disabled by default)
- RPM Fusion Nonfree Updates Testing for Fedora 12 (disabled by default)

## NOTE

I use this script to speed up Fedora 12 (re)deployment on my (jailbroke) Playstation 3 web server at http://www.ps3linux.net.

Yes I bought my PS3 its own domain name... and its up 24/7... because I'm nuts.

### The Model Citizen

