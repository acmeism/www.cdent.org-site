TARGET = site
TEMPLATE = template

ALL = \
      home \
      download \
      download/distributions \
      download/source-repository \
      download/installation \
      news \

TODO = \
      download/installation \
      specification \
      specification/python \
      specification/perl \
      specification/ruby \
      specification/javascript \
      documentation \
      documentation/roadmap \
      documentation/overview \
      documentation/faq \
      examples \
      examples/hello-world \
      community \
      community/contribute \
      community/wiki \
      community/mailing-list \
      community/chat-room \
      community/authors \

ALL_TARGETS = $(ALL:%=$(TARGET)/%/index.html)
ALL_DIRS = $(ALL:%=$(TARGET)/%/)
CSS = $(TARGET)/style.css

all: $(ALL_TARGETS) $(CSS)

$(CSS): $(TEMPLATE)/style.css Makefile config.yaml
	tt-render --path=$(TEMPLATE) --data=config.yaml style.css > $@

$(ALL_TARGETS): $(ALL_DIRS) $(TEMPLATE)/* config.yaml Makefile
	tt-render --path=$(TEMPLATE) --data=config.yaml $(@:$(TARGET)/%/index.html=%.html) > $@

template/%.html: content/%.st
	bin/render $< > $@

$(ALL_DIRS):
	mkdir -p $@

clean:
	rm -fr $(ALL_DIRS) $(CSS)
