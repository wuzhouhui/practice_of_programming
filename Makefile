
all: tpop.pdf

tpop.pdf: *.tex
	latexmk -pdf -pdflatex="xelatex -interactive=nostopmode" \
		-use-make the_practice_of_programming.tex

clean:
	latexmk -CA

.PHONY: all clean tpop.pdf
