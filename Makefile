all: presentation.pdf PL_dev_philo.pdf

presentation.pdf: presentation.md 
	pandoc -t beamer presentation.md -o presentation.pdf

PL_dev_philo.pdf: PL_dev_philo.md
	pandoc -t beamer PL_dev_philo.md -o PL_dev_philo.pdf

clean:
	rm -rf *~  # I am using emacs, sorry...
	rm -rf *.pdf
