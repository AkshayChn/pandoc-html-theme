####################################################################################################
# Configuration
####################################################################################################

# Build configuration

BUILD = docs
MAKEFILE = Makefile
OUTPUT_FILENAME = index
METADATA = metadata.yaml
CHAPTERS = chapters/*.md
TOC = --toc --toc-depth=2
METADATA_ARGS = --metadata-file=$(METADATA)
IMAGES_FOLDER = images
IMAGES = $(IMAGES_FOLDER)/*
COVER_IMAGE = $(IMAGES_FOLDER)/cover.png
#MATH_FORMULAS = --webtex
MATH_FORMULAS = --mathjax
ASSETS = ./assets/
#CSS_FILE = github-style.css
CSS_FILE = style.css
CSS_ARGS = --css=$(CSS_FILE)
TEMPLATE_PATH = $(ASSETS)template.html
TEMPLATE = --template $(TEMPLATE_PATH)
PANDOC_COMMAND = pandoc
HIGHLIGHT_STYLE = --highlight=kate

# Colors
RED= \033[0;31m
NC= \033[0m # No Color
GREEN= \033[0;32m
YELLOW= \033[1;33m
# Debugging

# Combined arguments

ARGS = -f markdown+emoji $(TEMPLATE) $(TOC) $(MATH_FORMULAS) $(CSS_ARGS) $(METADATA_ARGS) $(HIGHLIGHT_STYLE)
HTML_ARGS = --standalone --to=html5


####################################################################################################
# Basic actions
####################################################################################################

all:	book

#book:	epub html pdf docx
book:	html

clean:
	rm -r $(BUILD)
	@echo "${RED}Build directory was cleaned${NC}"

####################################################################################################
# File builders
####################################################################################################


html:	$(BUILD)/$(OUTPUT_FILENAME).html


$(BUILD)/$(OUTPUT_FILENAME).html:	$(MAKEFILE) $(METADATA) $(CHAPTERS) $(ASSETS)
	mkdir -p $(BUILD)
	$(PANDOC_COMMAND) $(ARGS) $(HTML_ARGS) -o $@ $(CHAPTERS)
	cp -R $(IMAGES_FOLDER)/ $(BUILD)/
	cp -R $(ASSETS) $(BUILD)/
	@echo "${GREEN}HTML site was built${NC}"

