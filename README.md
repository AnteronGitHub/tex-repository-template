# TeX Document template

This is a repository template for writing general LaTeX documents while using BibTeX references.

## Get started

After cloning this repository, before making any changes, make sure that you are able to compile the document by
running the following command:
```
make
```

By running the following command, in addition to compiling the sources with LaTeX and BibTeX, you will also open the
resulting pdf file with the reader program specified for make program (see the Makefile for details).
```
make run
```

## Customize template

Once confirmed that you are able to compile the LaTeX sources, update the document title in the Makefile (see comments
within the file), and rename the main tex file (in the form *title.tex*). After this, compile the document as
previously in order to confirm that everything works.
