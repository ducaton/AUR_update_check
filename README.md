# Script that checks if AUR packages got updates

### Description

This script compares `pkgver=` line between local and AUR versions of PKGBUILD. You should put it one directory above of PKGBUILD. Example:

```
./check_upd.sh
./firefox-beta-bin/PKGBUILD
./libreoffice-dev-bin/PKGBUILD
./v4l2loopback-dkms-git/PKBUILD
```

> Directories that starts with # are skipped

### Output

```
$./check_upd.sh 
------------------
AUR update check
------------------
✓ firefox-beta-bin 100.0b9
✗ libreoffice-dev-bin 7.3.0.2-1 -> 7.3.0.3-1
✓ v4l2loopback-dkms-git 0.12.5.r232.g2fa9d6d-1
```
