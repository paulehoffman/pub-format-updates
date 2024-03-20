all: draft-hoffman-pub-format-updates.txt draft-hoffman-pub-format-updates.html

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $< --text

%.html: %.xml
	xml2rfc $< --html

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
