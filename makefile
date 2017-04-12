LFLAGS = -interaction=nonstopmode

all:  pres.pdf

pres.pdf: pres.tex report.bib
	pdflatex $(LFLAGS) pres.tex; bibtex pres; pdflatex $(LFLAGS) pres.tex; pdflatex $(LFLAGS) pres.tex
clean:
	rm *.aux *.bbl *.blg *.lof *.log *.lot *.out *.toc pres.pdf
