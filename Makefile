LATEX ?= tectonic

.PHONY: all article clean

all: article

article:
	mkdir -p build
	$(LATEX) -o build article.tex

clean:
	rm -rf build
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.xdv *.synctex.gz *.fls *.fdb_latexmk
	rm -f article.pdf
