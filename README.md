# ps3-goodrepos

I wrote this script to run on my Playstation 3 after a fresh install of Fedora 12 (ppc) in OtherOS. It replaces broken yum repo configs (including RPM-GPG keys) installed by Fedora with ones that work. It then invokes yum to rebuild its cache and executes a system update.

## INSTRUCTIONS

1. Make sure the network is configured/working in your Fedora 12 installation: `ping www.google.com` should get replies.
2. Stock Fedora 12 cannot download from github (due to SSL/TLS incompatibility). Alternatively, you can download this script (archived) to your PS3 from my website instead: `wget http://www.ps3linux.net/ps3-filez/ps3-goodrepos.tar.bz2`
3. Extract script: `tar xvf ps3-goodrepos.tar.bz2`
3. Enter script directory: `cd ps3-goodrepos/`
4. Run script with root privileges: `sudo ./ps3-goodrepos.sh`

## REPOSITORIES INCLUDED

- Fedora 12
- Fedora 12 Updates
- Fedora 12 Updates Testing
- RPM Fusion Free for Fedora 12 (disabled by default)
- RPM Fusion Free Updates for Fedora 12 (disabled by default)
- RPM Fusion Free Updates Testing for Fedora 12 (empty - disabled by default)
- RPM Fusion Nonfree for Fedora 12 (disabled by default)
- RPM Fusion Nonfree Updates for Fedora 12 (disabled by default)
- RPM Fusion Nonfree Updates Testing for Fedora 12 (empty - disabled by default)
- ps3linux (my repo - experimental - disabled by default)

## NOTE

I use this script to speed up Fedora 12 (re)deployment on my (jailbroke) Playstation 3 web server at http://www.ps3linux.net.

Yes I bought my PS3 its own domain name... and its up 24/7... because I'm nuts.

### The Model Citizen

