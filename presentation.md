
---
author:
- Nicolas Borie
- Olivier Champalle
- David Doyen
- Magdalena Kobylanski
- Dominique Revuz 
theme: Ilmenau
colortheme: orchid
fonttheme: structuresmallcapsserif 
title: Vers une plate-forme libre d’exercices auto-corrigés répétables et d’outils pédagogiques
subtitle: exercices autocorrigé répétables 
...

***


# Pourquoi une plateforme

**Des étudiants ** 

- Très hétérogènes (culture, prérequis, méthodes)
- options de Première et Terminale (NSI)
- Très Nombreux (L1 dans chaque licences)
- Ayant de mauvaises stratégies d'apprentissage 
- Ayant Grands besoins de feedback (réguliers et personnalisés)
- Souhaitant d'autres pédagogies, désynchronisés, inversés, autonomes 


**Des enseignants**

- Pas assez nombreux, l'informatique est spécialement sous dotée
- Pas amateurs de correction de copies 
- Besoin d'outils de synchronisation pour rationaliser les
 interventions des grosses équipes pédagogiques
- Mettre les élèves au **travail** ! qqcvd




# objectifs initiaux de la plateforme PL


+ Un outil de suivi des connaissances
+ mes Echecs productifs
+ exerciseur
+ WIMS, dette
+ Répétable
+ langage de programmation 




# Objectifs Généraux 

Notre objectif une plateforme évolutive, gratuite, ouverte, partagée et communautaire, basée sur des fondements informatiques et scientifiques solides, une approche didactique et pédagogique inclusive où l’intelligence collective peut s’exprimer à son maximum. 

***
# Objectifs Généraux 

+ Gratuite 

+ Ouverte 

+ Évolutive 
 
+ Partagée et communautaire 

+ Fondement scientifiques solides 

***

# Nos principes


- Le Patron c'est l'enseignant 
- La compétence disciplinaire prime 
- La liberté pédagogique 
- Solide en terme informatique 
- Développé par des enseignants et des étudiants
- Technologies rationnelles et récentes
- Héritage de l'expérience des projets universitaires
- Intégration dans l'existant (moodle) plutôt que recréer (NIH) 



***

# une plateforme de qualité 

## Ergonomique 
Auto-apprentissage de l'usage de la plateforme,
langage de programmation des exercices simple et extensible,
Formulaire de création des exercices standards,

## Fiabilité

La fiabilité est une fonction de l'usage, plus notre logiciel sera utilisé plus il sera fiable (Méthode MS).

## Efficacité 

Nos choix techniques:Python3 et le framework Django, ne nous ont pas encore trahi.

***

## Capacité Fonctionnelle

Nous visons pertinence, exactitude, interopérabilité, sécurité et de conformité.

## Maintenabilité

C'est notre préoccupation première et notre approche est architecturale.

## Portabilité 

Pour s'éviter des problèmes de gestion de portabilité a travers différents système, deux solutions stratégique (un server de ressource centrale/unique),
un déploiement sur docker.


***

# Objectif 2020

+ Une pédagogie alignée (triforce)
+ intégration du suivi individuel et collectif
+ création d'un outil search and compose 
+ organisation des ressources 
+ Deux types des serveurs  Assets Resources 
+ Développement de la communauté


#  Une pédagogie alignée


\begin{minipage}{8cm}
\includegraphics[width=0.5\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/triforcePL.png}
\end{minipage}\hspace{-4cm}\begin{minipage}{6cm}\fbox{\begin{tabular}{@{}c@{}}
 Aquis/Objectifs d'apprentissage \\
 Activité pour l'atteindre \\
 Evaluation pour valider l'aquisition
 \end{tabular}}
\end{minipage}
\centering
Une pédagogie alignée la "triforce".


# Notion centrale d'objectifs (OAV, AAV)

La notion d'AAV est basé sur une idée d'objectivation de l'acquisition
 d'une connaissance, un savoir faire, une compétence.
Pour cela on va exprimer l'objectif de formation sous forme d'une phrase explicitant ce que l'on peut observer cher l'apprenant qui nous permet de valider (automatiquement ou humainement) l'acquisition.


# Canvas FA2L des AaV

\includegraphics[width=0.8\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/canvasAAV.png}


#  intégration du suivi individuel et collectif

\includegraphics[width=0.8\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/aavSuivi.png}

Organisation arborescente. Acquis/en cours/pas acquis/non débuté.

# Idées pour le suivi collectif 

\includegraphics[width=0.8\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/suiviCollectif.png}


# organisation des ressources 

Les resources sont partagées CC-by-SA, l'édition concurente est donc possible, 
la base de donnée gère la concurence par des numéros de version.
En cas d'édition concurente un éditeur de différences est proposé à l'utilisateur. 

Les ressources ont des systèmes de d'étiquetages: 
- Etiquetage scientifique : ComputerScience/Programming/Python/Functions/Return Value/...
- Etiquetage de niveau scolaire: cp/ce1/ce2/..../M2/D 
- Etiquetage de niveau de bloom: reconnaissance/usage/composition/analyse/critique/création
- Type: lecture, exo, quiz, calcul, raisonnement, composition, etc

# création d'un outil search and compose 

Objectif je suis en cours j'ai besoin d'une ressource sur un sujet.
 J'ai donc déjà rempli en partie l'étiquetage scientifique mon cours est déjà étiqueté : ComputerScience/Programming/Python.

Je souhaite un exercice ou une feuille.

Je cherche quel que chose sur les fonctions.

Le système cherche soit un AAV soit un exercie soit une feuille. 

Le résultat de la recherche est une liste de ressources.
Je peux inserer (drag & drop) dans mon cours les ressources qui me conviennent.

Si le resultat est un AAV ili me donne accès au O&R Objectif & Ressource, une partie à la stackoverflow du site.

De nouveau je peux récuperer une ressource et la placer dans mon cours.

 





# Deux types des serveurs  Assets Resources 

Pour gérer la montée encharge et   

+ Développement de la communauté


***

# Science de l'éducation






***

# Utiliser l'intelligence collective 

Définir une éditorialisation efficace qui permet de produire et qualifier les ressources.

* suffisssament modulaire
* foisonement de petites actions (validation, correction, idée, code, classement) wikipedia 
* conserver l'ouverture et le partage de WIMS
* qualification par l'usage: ce qui sert et ce qui est utile 
* qualification par l'expertise (cercle, karma, savante)
* rôles multiples -> il ne faut pas tout savoir 



*** 

# Organisation globale 

Pour assurer le partage la création et la curation des Ressources.

Il est nécessaire d'avoir un **serveur National de Ressource** : pl.u-pem.fr

Pour assurer la monté en charge et répartir la gestion administrative du serveur il faut avoir **serveurs locaux d'Assets**. 

  Asset = Instanciation locale d'une Ressource.

***

# PL une plateforme intégrante 

* middleware en python3 
* LTI (interopérabilité des plateformes d'enseignement: moodle, claroline, ...)
* WIMS (les exercices de WIMS accessibles)
* sandbox variées (EBoP:exercices based on proof, SQL, autres modèles ) 
* Applets javacript 
* la possibilité d'ajout par plugins django, plugins python, plugins javascript
* une API générale d'accès aux services 
* une communication instantanée des utilisateurs et des développeurs
* récuperation de formats variés: AMC, Exo7, GIFT, LAB3D? 
* Normalisation des notations 
* GPL, CC

***

# Search & Compose 

Rapatriment Multi-echelles des Ressources. 






***

# Une communauté 


Vous si vous le voulez !

https://elearning.u-pem.fr

Compte extérieur 
login EssoxLucius1 
password EssoxLucius1 





***
# PL 2
Pour les étudiants : désynchronisation, essai erreur, métacognition (temps, profondeur).

Pour les enseignants : un lieux de rencontre, de ressources (exercices, AAV, activités, évaluations, cours,etc).



***

# PL's programming language is Python 

Python is a widely used language: One of the top 5 most used programming languages, with millions of programmers
“” Google has made no secret of the fact they use Python a lot for a number of internal projects. Even knowing that, once I was an employee, I was amazed at how much Python code there actually is in the Google source code system.””
Guido van Rossum Creator of Python 
Thousands of third-party Python packages available: databases, graphics, network, parallel computing, ...
Easy integration of C/C++/Fortran/...libraries 
Cython: Python is a major platform for scientific computing






  




***
# Les OAV

Les Acquis d'apprentissage visées. 

- Objectifs de formation
- Grains de connaissance
- Mesurables (observables)
- SMART Specific, Mesurable, Achievable, Realisatic, Temporaly Defined 

***

# Le prof est maitre dans sa classe

Le responsable de formation n'a accès qu'aux AAV.
Sauf si le prof lui donne effectivement accès au cours (co-prof,prof non editeur).

Accès aux statistiques mais pas a des informations individuelles.

Boites à moustaches.


***

# Le futur 

Le jury est fait avec des AAV.

***


# Conception

***

# Les objectifs de l'utisateur enseignant 

1) Fournir des activités pédagogiques à ces élèves.
    a) Trouver des ressources
    b) Structurer les ressources
    c) Ecrire, modifier et adapter des ressources
2) Faire le suivi de l'enseignement 
    a) individuel 
    b) Collectif
3) Reporting
4) Constuire son cours dans une formation. 
5) Participer a une communauté scientifique 


