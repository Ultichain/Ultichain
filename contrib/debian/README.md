
Debian
====================
This directory contains files used to package ultichaind/ultichain-qt
for Debian-based Linux systems. If you compile ultichaind/ultichain-qt yourself, there are some useful files here.

## ultichain: URI support ##


ultichain-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ultichain-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ultichain-qt binary to `/usr/bin`
and the `../../share/pixmaps/ultichain128.png` to `/usr/share/pixmaps`

ultichain-qt.protocol (KDE)

