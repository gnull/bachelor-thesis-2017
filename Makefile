.PHONY: all open

all: main.pdf

open: main.pdf
	evince main.pdf

main.pdf: main.tex
	pdflatex $^
