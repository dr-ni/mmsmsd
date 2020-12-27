INSTALL?=install
RM?=rm -f
RMD?=$(RM) -r
PREFIX?=/usr/local
BIN=bin
DOCS=/usr/share/doc/mmsmsd
MANS=man/man1
all:
	@echo "usage:"
	@echo "  sudo make install"
	@echo "  sudo make uninstall"

install:
	$(INSTALL) -d $(PREFIX)/$(MANS)
	$(INSTALL) -m 0755 mmsmsd $(PREFIX)/$(BIN)
	$(INSTALL) -m 0644 README.md $(DOCS)
	$(INSTALL) -m 0644 LICENSE $(DOCS)
	$(INSTALL) -m 0644 $(MANS)/mmsmsd.1 $(PREFIX)/$(MANS)

uninstall:
	$(RM) $(PREFIX)/$(BIN)/mmsmsd
	$(RMD) $(DOCS)
	$(RM) $(PREFIX)/$(MANS)/mmsmsd.1
