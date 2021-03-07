INSTALL?=install
RM?=rm -f
CP?=cp
RMD?=$(RM) -r
PREFIX?=/usr/local
RULES?=/etc/polkit-1/localauthority/50-local.d
BIN=bin
DOCS=/usr/share/doc/mmsmsd
MANS=man/man1
all:
	@echo "usage:"
	@echo "  sudo make install"
	@echo "  sudo make uninstall"

install:
	sudo apt install modemmanager
	sudo apt install libnotify-bin
	sudo apt install vorbis-tools
	$(INSTALL) -d $(PREFIX)/$(MANS)
	$(INSTALL) -m 0755 mmsmsd $(PREFIX)/$(BIN)
	$(INSTALL) -m 0755 mmsendsms $(PREFIX)/$(BIN)
	$(INSTALL) -m 0644 README.md $(DOCS)
	$(INSTALL) -m 0644 LICENSE $(DOCS)
	$(INSTALL) -m 0644 $(MANS)/mmsmsd.1 $(PREFIX)/$(MANS)
	$(INSTALL) -m 0644 $(MANS)/mmsendsms.1 $(PREFIX)/$(MANS)
	$(CP) ModemManager.pkla $(RULES)

uninstall:
	$(RM) $(PREFIX)/$(BIN)/mmsmsd
	$(RM) $(PREFIX)/$(BIN)/mmsendsms
	$(RMD) $(DOCS)
	$(RM) $(PREFIX)/$(MANS)/mmsmsd.1
	$(RM) $(PREFIX)/$(MANS)/mmsendsms.1
