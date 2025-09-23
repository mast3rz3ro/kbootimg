#!/bin/bash


		x=$(uname)
		m=$(uname -m)
		deps="grep stat date unzip uname"
	for c in $deps; do
		if ! command -v "$c" >/dev/null; then
				echo "- installing missing utility: $c"
			if [ "$x" = "Linux" ]; then
				apt update && apt install "$c" || exit 1
			elif [[ "$x" = "MSYS"* ]] || [[ "$x" = "MINGW"* ]]; then
				pacman -Syy && pacman -S "$c" || exit 1
			else
				echo "- unknown platform can not install $c: $x-$m"
				exit 1
			fi
		fi
	done
			if command -v magiskboot >/dev/null || command -v ~/magiskboot >/dev/null; then
				true
			else
					echo "- installing magiskboot utility..."
				if [ "$x" = "Linux" ] && [[ "$m" = "armv7"* ]]; then
					u="https://raw.githubusercontent.com/magojohnji/magiskboot-linux/refs/heads/main/armeabi-v7a/magiskboot"
				elif [ "$x" = "Linux" ] && [[ "$m" = "aarch64"* ]]; then
					u="https://raw.githubusercontent.com/magojohnji/magiskboot-linux/refs/heads/main/arm64-v8a/magiskboot"
				elif [[ "$x" = "MSYS"* ]] || [[ "$x" = "MINGW"* ]]; then
					u="https://github.com/svoboda18/magiskboot/releases/download/1.0-3/magiskboot.zip"
				else
					echo "- error unknown platform: $x-$m"
					exit 1
				fi
					curl -OL "$u" --output-dir ~/ || { echo "- an error occurred while downloading magiskboot."; exit 1; }
				if [ -s ~/magiskboot.zip ]; then
					unzip -qo ~/magiskboot.zip
				fi
					chmod -x ~/magiskboot
			fi
			if ! command -v ~/kbootimg >/dev/null; then
				u="https://raw.githubusercontent.com/mast3rz3ro/kbootimg/refs/heads/main/kbootimg" 
				curl -OL "$u" --output-dir ~/ || { echo "- an error occurred while downloading kbootimg."; exit 1; }
				chmod +x ~/kbootimg
			fi
				echo "- installing completed !"
				echo "- to run kbootimg enter: ./kbootimg"
