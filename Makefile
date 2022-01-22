all: form.pdf

%.pdf: %.svg
	inkscape -o $@ $<

form.pdf: form.tex style/assets style/assets/logo-text.pdf
	pdflatex $<

clean:
	rm -rf form.pdf *.aux *.log *.out

.PHONY: all clean
