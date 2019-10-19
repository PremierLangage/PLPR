PANDOC_OPT = -V geometry:margin=1.5cm --latex-engine=xelatex

all: marketing.pdf

marketing.pdf: marketing.md
	pandoc marketing.md $(PANDOC_OPT) -o marketing.pdf

clean:
	rm -f *.pdf
