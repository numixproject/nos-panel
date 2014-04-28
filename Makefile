UUID=atom-panel\@ozonos.org
INSTALLDIR=~/.local/share/gnome-shell/extensions/$(UUID)

all:

install: local

local: 
	#Create dir if not exist
	mkdir -p $(INSTALLDIR)

	#Clear dir from contents
	-rm -rf $(INSTALLDIR)/*

	#Copy new contents in
	cp -rf . $(INSTALLDIR)

uninstall:
	#Uninstall atom-panel
	-rm -rf $(INSTALLDIR)

