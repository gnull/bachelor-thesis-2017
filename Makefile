all: build open

build:
	latexmk -xelatex -synctex=1 main.tex
	
open: build
	evince main.pdf &
	
clean:
	@rm -vf main.aux \
	        main.fdb_latexmk \
	        main.fls \
	        main.log \
	        main.out \
	        main.pdf \
	        main.synctex.gz \
	        main.toc \
	        main.xdv \
	        osnov_chast.tex
