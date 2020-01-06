
---
author:
- Magdalena Kobylanski
- Nicolas Borie
- Dominique Revuz 
theme: Darmstadt
colortheme: seagull
fonttheme: structuresmallcapsserif 
title: Une plateforme partagée PL-(wims)
subtitle: exercices autocorrigé répétables
...



# Pourquoi

***
## Pourquoi une plateforme

**Des étudiants ** 

- Très hétérogènes (culture, prérequis, méthodes)
- options de Première et Terminale (NSI)
- Très Nombreux (L1 dans chaque licences)
- Ayant de mauvaises stratégies d'apprentissage 
- Ayant Grands besoins de feedback (réguliers et personnalisés)
- Souhaitant d'autres pédagogies, désynchronisés, inversés,  autonomes 

***

## Pourquoi une plateforme

**Des enseignants**

- Pas assez nombreux, l'informatique est spécialement sous dotée
- Débordés
- Pas amateurs de correction de copies 
- Besoin d'outils de synchronisation pour rationaliser les
  interventions des grosses équipes pédagogiques
- Mettre les élèves au **travail** ! qqcvd

***

## Un héritage WIMS

Un outil qui fonctionne 

Qualité: partage / référencement / accèssibilité / pédagogie / efficacité 

Mais une dette technique importante qui ne permet plus de le faire évoluer.

Ajouts, correction, extensions difficiles. 

# objectifs de la plateforme PL

***


## Exercices Autocorrigés Répétables



Initialement notre objectif était d'avoir des **exercices autocorrigés répétables**.

Soit un outil permettant aux étudiants de valider en autonomie l'acquisition de savoir faire, ou de connaissances.

Autocorrigés : car nous ne sommes pas asser disponibles.

Répétables : pouvoir se tromper mais pas éviter la difficulté.

Fournir le même service que WIMS d'aléa contrôlé.



***

## Pourquoi ne pas profiter des avancées en Science ?

* Informatique et TIC
* Science de l'éducation
* Sciences humaines : intelligence collective 


***

## Informatique  et TIC

Premier Langage PL est un exerciseur en ligne basé sur des **technologies informatiques récentes**


**Grandes lignes philosophiques :**

* Développé par des enseignants et des étudiants

* Open-source (MIT ou GPL3)

* Développement ouvert et collaboratif 

* Technologies rationnelles et récentes

* Héritage de l'expérience des projets universitaires

* Intégration dans l'existant plutôt que recréer (NIH)


***

## Science de l'éducation

\centering
Une pédagogie alignée la "triforce".

\begin{minipage}{8cm}
\includegraphics[width=0.5\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/triforcePL.png}
\end{minipage}\hspace{-4cm}\begin{minipage}{6cm}\fbox{\begin{tabular}{@{}c@{}}
 Aquis d'apprentissage \\
 Activité pour l'ateindre \\
 Evaluation pour le validé
  \end{tabular}}
\end{minipage}


***

## Sciences humaines : intelligence collective 

* Bazards ou Cathédrales.
* Faire émerger des ressources de grande qualité.
* Comment accepter tout le monde mais structurer la production.

***

## Utiliser l'intelligence collective 

Définir une éditorialisation efficace qui permet de produire et qualifier les ressources.

* conserver l'ouverture et le partage de WIMS
* qualification par l'usage: ce qui sert et ce qui est utile 
* qualification par l'expertise (cercle, karma, savante)
* rôles multiples -> il ne faut pas tout savoir 
* foisonement de petites actions (validation, correction, idée, code, classement) wikipedia 

Un serveur National de Ressource, des serveurs locaux d'Assets. 



# Conclusions

***

## PL une plateforme intégrante 

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

## Search & Compose 

Rapatriment Multi-echelles des Ressources. 

Notre mission 2019/2020.



***

## Une communauté 


Vous si vous le voulez !

https://elearning.u-pem.fr

Compte extérieur 
login EssoxLucius1 
password EssoxLucius1 





***
## PL 2
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




# Ecrire des exercices 

***

## Présentation des Exercices PL


- Permettre à des étudiants de s'entraîner avec des exercices
  auto corrigés répétables.

\smallskip


- Proposer des exercices ou l'ordinateur calcule les réponses, donne
  des retours, conseil et valide le travail de l'étudiant.

\smallskip

- L'étudiant a besoin d'évaluations critiques régulières de son
  travail, pour ainsi pouvoir identifier ses erreurs et apprendre de
  celles-ci.

\smallskip

- Proposition de feedback (évaluations, critiques, remarques) plus
  riches qu'une simple évaluation correct/faux. Mise en relief et
  exploitation globale du travail de l'apprenant (dans le temps, sur
  plusieurs matières, etc).

***

## Stratégie générale 


Les exercices doivent être \color{blue}construits \color{black}, c'est
à dire qu'une partie de l'exercice doit être généré au moment où il
est proposé à l'élève. Nous utiliserons le terme de
\color{red}builder \color{black}  pour désigner le programme qui réalise
cette construction.

Deuxièmement nous voulons pouvoir: 

* Vérifier la réponse. 
* Produire un feedback. 
* Modifier la question pour fournir plus d'aide. Pour de la programmation, permettre de corriger les erreurs syntaxiques.
* Produire une note.

Nous utiliserons le terme \color{red}grader \color{black} pour
désigner le programme qui réalise ces quatre points.


***
## Les exercices


Les exercices sont des **dictionnaires python** : \
ensemble (clef, valeur), qui contiennent toute l'information nécessaire à la
plateforme pour faire jouer l'exercice à l'élève.


\bigskip

Une fois l'exercice chargé il n'est plus modifiable. \
(sauf à être rechargé ce qui peut impliquer des effets de bords)

***
## l'extension

Ces dictionnaires contiennent de nombreuses clefs qu'il est pénible
d'apprendre pour l'utilisateur débutant et fastidieux à spécifier
systématiquement. C'est pourquoi un système d'extension (héritage)
est proposé.

\small

```
    # exercice A.pl
    text=l'énoncé de l'exercice
    form= ... 
    title=Haha 
```


```
    # exercice B.pl
    extends@A.pl   # extends=A.pl ancienne syntaxe
    title=Oh! le B devient un clone du A en 2 clefs.
```
\normalsize

***
## Le dictionnaire résultant 

Le dictionnaire de l'exercice B.pl

\small


```json
    {
    "text":"l'énoncé de l'exercice",
    "form":"...",
    "title":"Oh! le B devient un clone du A en 2 clefs.",
    }
```

\normalsize

**Info : **remarquez que vous n'avez pas de déspécialisation de caractères sauf le passage à la ligne 


**Info : **l'auteur n'a spécifié que deux clefs en écrivant l'énoncé
de B mais il a pu possiblement hériter d'un très large contenu situé
dans les clefs spécifiées dans A.

***
## Les éléments multi-lignes 

\small

```
## ceci est un commentaire 
## exercice avec un énoncé multi ligne 

text==
l'énoncé de l'exercice
## cette ligne fait partie de l'énoncé 
et sera affiché en tant que tel 
Qui plus est comme l'énoncé est en markdown/latex
la ligne suivante est un titre avec la fraction a/b !!!
## $$\frac{a}{b}$$ 
-----------------
==

## la ligne contenant uniquement '==' 
permet de terminer la balise text
```

\normalsize

***
## Un premier exercice : La somme de deux entiers. 


* Connexion à la plateforme, passage par LTI.  

* Connectons nous à un LMS client: http://elearning.u-pem.fr   /
 \color{blue} ATTENTION POUR LE TP D'AUJOURD'HUI   
 N'UTILISER PAS VOTRE COMPTE HABITUEL \color{black}  

Login: EssoxLucius1   
Password: EssoxLucius1  

***
## Objectif demander un calcul a l'élève


```
title=Calcul d'une somme
author=Moi / Vous 
```
La balise **form** permet d'afficher à l'étudiant un formulaire html.
Comme ici, nous souhaitons une simple valeur entière, ce formulaire fait partie des 
formulaires prédéfinis :
```
form=@ /form/simplenumeric.html 
```
la notation avec @ permet de lire le fichier /lib/form/simplenumeric.html
 et d'affecter son contenu à la clef **form**.

D'autre type d'inputs il sont décrit dans la page suivante: 
https://www.w3schools.com/tags/tag_input.asp 

***
## L'énoncé la balise text


Nous voulons un énoncé qui dépend de valeurs numériques, l'exemple
suivant définit deux variables a et b et utilise la syntaxe des 
template html en calculant le **text** résultant du remplacement de **{{a}}**
par la valeur de **a**;
```
a=12
b=12
text="Que vaux la somme de {{a}} et {{b}}" 
```
Des substitutions automatiques très pratiques pour les contenus
dynamiques et aléatoires.

***
## Évaluation 


```
title=Calcul d'une somme
author=Moi et Vous
form=@ /form/simplenumeric.html 
a=12
b=12
text="Que vaux la somme de {{a}} et {{b}}" 
```

Il ne nous reste maintenant plus qu'a évaluer la réponse de
l'étudiant. C'est le rôle du grader.
 
***
## Grader

La ligne suivante permet de charger un **grader** préprogrammé qui est
dans la librairie standard /lib/grader/evaluator.py \
La syntaxe suivante permet d'ajouter le fichier à l'environnement
sécurisé de l'exercice.  Dans cet environnement, le fichier
s'appellera "grader.py".

```
@ /grader/evaluator.py [grader.py]
```
Ce grader est un peu spécifique ; il utilise une balise **evaluator** dans le pl 
et c'est celle-ci qui contient l'évaluation.


Cette balise **evaluator** doit affecter la variable **grade** avec un
couple ([(-1) à 100], "feedback string") où le premier champs est -1
(pas d'évaluation) ou un entier de 0 (tout faux) à 100 (tout juste).
Le deuxième champ est un texte qui est affiché à l'utilisateur une fois
l'évaluation terminée.

***
## Un exemple d'**evaluator**

\footnotesize

```python
evaluator==
import traceback
import sys

if response['txt_answer'] == a + b: # evaluation de l'exercice 
        grade = (100, "Bonne réponse")
else:
        grade = (0, "Mauvaise réponse Bonne réponse : "+str(a+b))
==
```
\normalsize

Tout **Python** est disponible dans un grader/evaluator. L'exercice
est ici simple mais les possibilités de feedback sont infinies.

***
## Solution complète 

\footnotesize

```python
title= Calcul de la sommes de deux entiers    
author= Moi et Vous
form=@  /form/simplenumeric.html 
@ /grader/evaluator.py [grader.py]

a=12
b=12
text=" Que vaux la somme de {{a}} et {{b}} ?" 

evaluator==
import traceback

# evaluation de l'exercice 
if int(response['txt_answer']) == a + b  :
    grade = (100, "Bonne réponse")
else:
    grade = (0, "Mauvaise réponse, la Bonne réponse était: "+str(a+b))
==
```

\normalsize


***
## Comment rendre l'exercice aléatoire 

Nous allons ajouter un **builder** qui utilise la balise **before**. 

```python
builder=@ /builder/before.py 

before==
import random
a=random.randint(3,10)
b=random.randint(3,10)
==
```
Maintenant notre exercice est aléatoire !!

*** 

## Un aléa contrôlé 


Un bon exercice avec un aléa controlé vas permettre de fournir une progressions dans la difficulté,
commencer avec un exercice simple avec un énoncé contenant une description du chemin intellectuel vers la solution.
Puis progressivement avec les progrès de l'élève des exercices plus durs avec moins d'aide,
mais toujours autant de feedback sur les erreurs.






***
##  Les inputs  / Les componants.


Pour simplifier le travail des développeurs de template nous avons proposé un certain nombre d'inputs préparés, ils sont accessibles dans
le répertoire /form de la librairie standard.




***
## Les activités


Pour permettre une pédagogie hybride ou l'on mélange le présentiel avec des activités désynchronisées l'enseignant a besoin d'outils de gestions et de suivi des activités.



Quelques activités individuelles: examen, pomodoro, révision, recommandation, mémorisation, 

Des activités de groupes ou à plusieurs : défis, devoirs maison, ateliers, concours et tournois, projet et problèmes


## Outils d'organisation des élèves

Un des coûts administratif d'un enseignement par problèmes est la création des groupes.
Mécanisme de sélection automatiques de groupes d'élèves,
- binômes aléatoires, sans remise, par sous groupes de TD,
- auto-organisation des groupes (chat rooms)
- organisation par projet avec groupes hétérogènes et un "bon" par groupe

La création d'un groupe créer une zone de travail spécifique au groupe (projet git)



## Les AAV



# ScreenShots 

## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/cours.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/chimie.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/departements.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/dragdrop.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/statsducours.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/suivieleves.png}}



## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/acceuilediteur.png}}


## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/editeur.png}}

## {.plain}
\vspace*{-1pt}
\makebox[\linewidth]{
    \includegraphics[width=1\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/optic.png}}
