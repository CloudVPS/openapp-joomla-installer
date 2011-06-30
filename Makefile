PREFIX=/

install:
# bin
	cp openapp-joomla-detect $(PREFIX)usr/bin
	cp openapp-joomla-passwd $(PREFIX)usr/bin

#man
	cp debian/openapp-joomla-detect.1 $(PREFIX)usr/share/man/man1
	cp debian/openapp-joomla-passwd.1 $(PREFIX)usr/share/man/man1
	gzip $(PREFIX)usr/share/man/man1/openapp-joomla-detect.1
	gzip $(PREFIX)usr/share/man/man1/openapp-joomla-passwd.1

uninstall:
# bin
	rm -rf $(PREFIX)usr/bin/openapp-joomla-detect
	rm -rf $(PREFIX)usr/bin/openapp-joomla-passwd

clean:
	-echo "NOP"

