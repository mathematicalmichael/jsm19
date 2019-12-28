# pdf files that will be outputed
BUILD := \
	poster \

TARGETS := $(patsubst %, %.pdf, $(BUILD))

INPUT := \
	poster \
	col-1 \
	col-2 \
	col-3 \
	references \
	notation

TEXS := $(patsubst %, %.tex, $(INPUT))

DEPS := \
	beamerthemeposter.sty \
	beamercolorthemelabsix.sty \

REFS := $(shell find . -type f -name '*.bib')

LATEX  := lualatex
BIBTEX := bibtex

# phony targets

all: $(TARGETS)

clean:
	rm -rf *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc

.PHONY: all clean

# main targets

poster.pdf: $(TEXS) $(REFS) $(DEPS)
	$(eval SRC_$@ = $(patsubst %.tex, %, $<))
	$(LATEX) $(SRC_$@)
	$(LATEX) $(SRC_$@)
	$(LATEX) $(SRC_$@)
