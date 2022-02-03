# Change these values according to your environment

# The title must correspond to the 'main' tex file - rename that file name when updating this value
title           := Doe-John-Case-Against-Single-Quotes

# This must be a program which can be invoked on command line (e.g. open in OS X)
document_viewer := xdg-open


# !!!Do not change the below contents!!!
tmp_files       := $(wildcard *.aux *.bbl *.blg *.log *.out *.pdf)
tex_files       := $(wildcard *.tex)

${title}.pdf: ${tex_files}
	pdflatex ${title}.tex
	bibtex ${title}
	pdflatex ${title}
	pdflatex ${title}

.PHONY:
run: ${title}.pdf
	${document_viewer} ${title}.pdf

.PHONY:
clean:
	rm -f ${tmp_files}
