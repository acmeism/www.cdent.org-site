TARGET = site
TEMPLATE = template

ALL := $(shell find content/ -type f | grep -v '\.sw' | perl -pe 's!^\w+/(.*)\.st$$!$$1!' | sort)

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

site/%/index.html: template/%.html config.yaml Makefile
	tt-render --path=$(TEMPLATE) --data=config.yaml $(@:$(TARGET)/%/index.html=%.html) > $@

template/%.html: content/%.st
	bin/render $< > $@

$(ALL_DIRS):
	mkdir -p $@

clean:
	rm -fr $(ALL_DIRS) $(CSS)
