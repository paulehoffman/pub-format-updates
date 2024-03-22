DOC = draft-hoffman-pub-format-updates
all: $(DOC).mkd
	kdrfc -c -t -h $(DOC).mkd
	rm $(DOC).xml
	mv $(DOC).v2v3.xml $(DOC).xml

