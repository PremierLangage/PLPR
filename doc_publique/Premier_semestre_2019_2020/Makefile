all: presentation.pdf 

presentation.pdf: presentation.md 
	pandoc -t beamer presentation.md -o presentation.pdf

clean:
	rm -rf *~  # I am using emacs, sorry...
	rm -rf *.pdf
