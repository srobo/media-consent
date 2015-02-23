all: form.pdf

%.pdf: %.svg
	inkscape -A $@ $<

marketing/logos:
	git submodule update --init

form.pdf: form.tex marketing/logos marketing/logos/sr-landscape-no-background-flat.pdf
	pdflatex $<

clean:
	rm -rf form.pdf *.aux *.log *.out
	rm -f marketing/logos/sr-landscape-no-background-flat.pdf

.PHONY: all clean
