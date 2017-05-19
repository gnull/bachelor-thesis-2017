all: build run

build:
	latexmk -xelatex -synctex=1 main.tex
	
run:
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
