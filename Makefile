all:
	@echo Run \'sudo make install\' to install wannheim.

install:
	cp -r usr /

uninstall:
	rm /usr/bin/wannheim
	rm /usr/bin/wannheimcli
	rm /usr/share/applications/wannheim.desktop
	rm -rf /usr/share/wannheim

debian:
	dpkg-buildpackage -us -uc -S
	dpkg-buildpackage -us -uc
	lintian ../*.deb
	rm -rf debian/.debhelper
	rm -rf debian/wannheim
	rm -rf debian/files
