# Ecrire des exercices 

***

# Présentation des Exercices PL


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

# Stratégie générale 


Les exercices doivent être \color{blue}construits \color{black}, c'est
à dire qu'une partie de l'exercice doit être généré au moment où il
est proposé à l'élève. Nous utiliserons le terme de
\color{red}builder \color{black} pour désigner le programme qui réalise
cette construction.

Deuxièmement nous voulons pouvoir: 

* Vérifier la réponse. 
* Produire un feedback. 
* Modifier la question pour fournir plus d'aide. Pour de la programmation, permettre de corriger les erreurs syntaxiques.
* Produire une note.

Nous utiliserons le terme \color{red}grader \color{black} pour
désigner le programme qui réalise ces quatre points.


***
# Les exercices


Les exercices sont des **dictionnaires python** : \
ensemble (clef, valeur), qui contiennent toute l'information nécessaire à la
plateforme pour faire jouer l'exercice à l'élève.


\bigskip

Une fois l'exercice chargé il n'est plus modifiable. \
(sauf à être rechargé ce qui peut impliquer des effets de bords)

***
# l'extension

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
  extends@A.pl  # extends=A.pl ancienne syntaxe
  title=Oh! le B devient un clone du A en 2 clefs.
```
\normalsize

***
# Le dictionnaire résultant 

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
# Les éléments multi-lignes 

\small

```
# ceci est un commentaire 
# exercice avec un énoncé multi ligne 

text==
l'énoncé de l'exercice
# cette ligne fait partie de l'énoncé 
et sera affiché en tant que tel 
Qui plus est comme l'énoncé est en markdown/latex
la ligne suivante est un titre avec la fraction a/b !!!
# $$\frac{a}{b}$$ 
-----------------
==

# la ligne contenant uniquement '==' 
permet de terminer la balise text
```

\normalsize

***
# Un premier exercice : La somme de deux entiers. 


* Connexion à la plateforme, passage par LTI. 

* Connectons nous à un LMS client: http://elearning.u-pem.fr  /
 \color{blue} ATTENTION POUR LE TP D'AUJOURD'HUI  
 N'UTILISER PAS VOTRE COMPTE HABITUEL \color{black} 

Login: EssoxLucius1  
Password: EssoxLucius1 

***
# Objectif demander un calcul a l'élève


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
# L'énoncé la balise text


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
# Évaluation 


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
# Grader

La ligne suivante permet de charger un **grader** préprogrammé qui est
dans la librairie standard /lib/grader/evaluator.py \
La syntaxe suivante permet d'ajouter le fichier à l'environnement
sécurisé de l'exercice. Dans cet environnement, le fichier
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
# Un exemple d'**evaluator**

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
# Solution complète 

\footnotesize

```python
title= Calcul de la sommes de deux entiers  
author= Moi et Vous
form=@ /form/simplenumeric.html 
@ /grader/evaluator.py [grader.py]

a=12
b=12
text=" Que vaux la somme de {{a}} et {{b}} ?" 

evaluator==
import traceback

# evaluation de l'exercice 
if int(response['txt_answer']) == a + b :
  grade = (100, "Bonne réponse")
else:
  grade = (0, "Mauvaise réponse, la Bonne réponse était: "+str(a+b))
==
```

\normalsize


***
# Comment rendre l'exercice aléatoire 

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

# Un aléa contrôlé 


Un bon exercice avec un aléa controlé vas permettre de fournir une progressions dans la difficulté,
commencer avec un exercice simple avec un énoncé contenant une description du chemin intellectuel vers la solution.
Puis progressivement avec les progrès de l'élève des exercices plus durs avec moins d'aide,
mais toujours autant de feedback sur les erreurs.






***
# Les inputs / Les componants.


Pour simplifier le travail des développeurs de template nous avons proposé un certain nombre d'inputs préparés, ils sont accessibles dans
le répertoire /form de la librairie standard.




***
# Les activités


Pour permettre une pédagogie hybride ou l'on mélange le présentiel avec des activités désynchronisées l'enseignant a besoin d'outils de gestions et de suivi des activités.



Quelques activités individuelles: examen, pomodoro, révision, recommandation, mémorisation, 

Des activités de groupes ou à plusieurs : défis, devoirs maison, ateliers, concours et tournois, projet et problèmes

***

# Outils d'organisation des élèves

Un des coûts administratif d'un enseignement par problèmes est la création des groupes.
Mécanisme de sélection automatiques de groupes d'élèves,

- binômes aléatoires, sans remise, par sous groupes de TD,
- auto-organisation des groupes (chat rooms)
- organisation par projet avec groupes hétérogènes et un "bon" par groupe

La création d'un groupe créer une zone de travail spécifique au groupe (projet git)


***

# Les ppltp ou feuilles programmables


Un ppltp est un fichier au format pltp avec les ajouts suivants 
Numérotation automatique des exercices et possibilité de les nommer.
```
  @ url [variablename]
  name@@
  url
  url
  url
  ...
  @@
```
Enfin la balise **runner** contient le "code" de l'activité.



***
## Une activité programmable 


La balise runner est un script python qui est exécuté dans un environnement protégé (pyenv réduit ou sur la sandbox) et qui n'a pas accès directement au code django (éventuellement peut obtenir des informations en utilisant une api restfull avec les bon droits i.e. je ne peux accèder qu'aux information de l'utilisateur et des assets du cours.)
FIXME un jail peut être ??

Le script est lancé avec comme dictionnaire global le dictionnaire produit par le fichier pltp, il est ainsi possible d'initialiser des variables.


Dans le script tous les pl qui ont été chargés (au moment de la publication de la ressource en asset), sont visible sous la forme d'une instance de la classe **Activity** .

Cette classe à des methodes suivante qui vont nous permettre de programmer des activités complexes basées sur des activités plus simples.


***
## Class ProgrammableActivity

\small
```python
Class ProgrammableActivity:

 def score(): 
 """ Returns the score of the activity. If the activity is a pl this is direct.
  Else the activity must define an score base on the sub activities used in it. 
  Default value :
    If there is a global variable score in the pltp use the value stored there, else return zero. 
    The global variable is of the responsability of **runner** code in the case of a ppltp.
 """ 

```

***
# Class ProgrammableActivity
\small
```python


 def status():
 """ Returns the status (sucess, failed, not started, stopped/abandonné). 
     If the activity is a pl this is direct.
     Else the activity must define an status base on the sub activities used in it.
     Default value : If there is a global variable status in the pltp use the value stored there,
      else return not started.
    The global variable is of the responsability of **runner** code in the case of a ppltp.
    """
```
***
# Class ProgrammableActivity
\small
```python

 def exec(rerun=False): 
  """ if rerun==False and if the status of the activity is success or failed.
    Return immedialty with True or False. 
    ELSE The current activity yields to this smaller activity. 
    The activity is loadded 
    Bread crumps are updated.
    This is the new Bottom Activity.
  """
  def init():""" prepare the activity for execution see @pavell9000 """
  def start():""" idem """
```


***
# The code of the **runner** is state less. 

Meaning you should write your code thinking it will be restarted each time the activity is activated. 


```python 
# pl1 ... pl10 where declared in the ppltp 

if not pl1.exec() and not pl8.exec() : # if pl 1 not valide do pl 8 !
 notification(current_teacher,currentstudent, " problème avec le concept bascule ")

while pl2.score() + pl3.score() + pl4.score() < 100: # 
 pl2.exec();
 pl3.exec();
 pl4.exec();



```

Has you can see on this exemple as exec replace the current activity.
We need to rerun the **runner** script to knows witch is the next sub activity to run (a plX in this case).


