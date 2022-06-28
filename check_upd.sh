#!/bin/sh
echo ------------------$'\n'AUR update check$'\n'------------------
cd $(dirname $0)
set *
for i; do
	if [[ $(echo $i | head -c 1) == "#" ]]; then
		continue
	fi
	if [ -d "$i" ]; then
		while IFS= read -r line; do
			if [[ $(echo $line | cut -b 1-7) == "pkgver=" ]]; then
				curl -s https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=$i | {
					while IFS= read -r iline; do
						if [[ $(echo $iline | cut -b 1-7) == "pkgver=" ]]; then
							line=$(echo $line | cut -b 8-)
							iline=$(echo $iline | cut -b 8-)
							if [[ $line == $iline ]]; then
								echo ✓ $i $line
							else
								echo ✗ $i $line \-\> $iline
							fi
							break
						fi
					done
					}
				break
			fi
		done < $i/PKGBUILD
	fi
done