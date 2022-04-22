#!/bin/sh
echo ------------------$'\n'AUR version check$'\n'------------------
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
							if [[ $line == $iline ]]; then
								echo ✔ $i
							else
								echo ✘ $i
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