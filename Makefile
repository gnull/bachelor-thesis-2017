.PHONY: all open

tex = 0-introduction.tex \
      1-timing-attacks.tex \
      2-linux.tex \
      3-experiments.tex \
      abstract-and-terms.tex \
      main.tex

bib =  bibliography.bib

all: main.pdf

open: main.pdf
	evince main.pdf

main.pdf: $(tex) $(bib)
	pdflatex main
	bibtex main
	pdflatex main
