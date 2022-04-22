# Script that checks if AUR packages got updates

### Description

This script compares `pkgver=` line between local and AUR versions of PKGBUILD. You should put it one directory above of PKGBUILD. Example:

```
./check_upd.sh
./firefox-beta-bin/PKGBUILD
./libreoffice-dev-bin/PKGBUILD
./v4l2loopback-dkms-git/PKBUILD
```

### Output

```
$./check_upd.sh 
------------------
AUR version check
------------------
✔ firefox-beta-bin
✘ libreoffice-dev-bin
✔ v4l2loopback-dkms-git
```
