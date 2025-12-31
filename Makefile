DESTDIR?=/usr/share
LOGO?=chopper_text
# for legacy Plymouth
# DESTDIR=/lib

install:
	mkdir -p $(DESTDIR)/plymouth/themes
	cp -r chopper $(DESTDIR)/plymouth/themes
	sed -i 's|LOGO|$(LOGO)|g' $(DESTDIR)/plymouth/themes/chopper/chopper.script
	sed -i 's|DESTDIR|$(DESTDIR)|g' $(DESTDIR)/plymouth/themes/chopper/chopper.plymouth

	sudo install -Dm644 plymouth-wait-for-animation.service /etc/systemd/system/plymouth-wait-for-animation.service

uninstall:
	rm -rf "$(DESTDIR)/plymouth/themes/chopper"
