all: form.pdf

form.pdf: form.tex
	pdflatex $<

clean:
	rm -rf form.pdf *.aux *.log *.out

.PHONY: all clean
