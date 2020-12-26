INSTALL?=install
RM?=rm -f
RMD?=$(RM) -r
PREFIX?=/usr/local
VARS?=/var/mmsmsd
BIN=bin
IN=inbox
OUT=sent
DOCS=/usr/share/doc/mmsmsd
MANS=man/man1

install:
	$(INSTALL) -d $(VARS)/$(IN)
	$(INSTALL) -d $(VARS)/$(OUT)
	$(INSTALL) -d $(PREFIX)/$(MANS)
	$(INSTALL) -m 0755 mmsmsd $(PREFIX)/$(BIN)
	$(INSTALL) -m 0644 README.md $(DOCS)
	$(INSTALL) -m 0644 LICENSE $(DOCS)
	$(INSTALL) -m 0644 $(MANS)/mmsmsd.1 $(PREFIX)/$(MANS)

uninstall:
	$(RM) $(PREFIX)/$(BIN)/mmsmsd
	$(RMD) $(DOCS)
	$(RM) $(PREFIX)/$(MANS)/mmsmsd.1
