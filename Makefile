all: presentation.pdf PL_dev_philo.pdf

presentation.pdf: presentation.md 
	pandoc -t beamer presentation.md -o presentation.pdf

PL_dev_philo.pdf: PL_dev_philo.md
	pandoc -t beamer PL_dev_philo.md -o PL_dev_philo.pdf

html/presentation.html: presentation.md 
	pandoc presentation.md -o html/presentation.html

html/PL_dev_philo.html: PL_dev_philo.md 
	pandoc PL_dev_philo.md -o html/PL_dev_philo.html


clean:
	rm -rf *~  # I am using emacs, sorry...
	rm -rf *.pdf
