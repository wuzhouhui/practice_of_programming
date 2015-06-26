
all: tpop.pdf

tpop.pdf: *.tex
	latexmk -pdf -pdflatex="xelatex -interactive=nostopmode" \
		-use-make tpop.tex

clean:
	latexmk -CA

.PHONY: all clean tpop.pdf
