DESTDIR?=/usr/share
# for legacy Plymouth
# DESTDIR=/lib

install:
	mkdir -p $(DESTDIR)/plymouth/themes
	cp -r chopper $(DESTDIR)/plymouth/themes
	sed -i 's|DESTDIR|$(DESTDIR)|g' $(DESTDIR)/plymouth/themes/chopper/chopper.plymouth

uninstall:
	rm -rf "$(DESTDIR)/plymouth/themes/chopper"
