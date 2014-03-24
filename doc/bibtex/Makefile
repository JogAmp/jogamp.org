
.SUFFIXES: .pdf .dvi .tex

.dvi.pdf:
	dvipdf $<

.tex.dvi:
	latex $<
	bibtex `basename $< .tex`
	latex $<
	latex $<

clean:
	rm -f *.log *.dvi *.aux *.bbl *.blg *.out

