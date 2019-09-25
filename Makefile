DRAFTS = \
	 draft-dolmatov-magma.xml \
	 draft-deremin-rfc4491-bis.xml

OUT = $(DRAFTS:.xml=.html) $(DRAFTS:.xml=.txt) $(DRAFTS:.xml=.pdf)

all: $(OUT)

clean:
	-rm -f $(OUT)

%.html: %.xml
	xml2rfc --html $^

%.txt: %.xml
	xml2rfc --text $^

%.pdf: %.xml
	xml2rfc --pdf $^
