all: build run

build:
	latexmk -xelatex -synctex=1 main.tex
	
run:
	evince main.pdf &
	
clean:
	@rm -vf *.aux *.fdb_latexmk *.fls *.log *.out *.synctex.gz *.toc *.xdv main.pdf
