DRAFTS = draft-dolmatov-magma.xml

OUT = $(DRAFTS:.xml=.html) $(DRAFTS:.xml=.txt)

all: $(OUT)

clean:
	-rm -f $(OUT)

%.html: %.xml
	xml2rfc --html $^

%.txt: %.xml
	xml2rfc --text $^
