
---
author:
- Nicolas Borie
- Olivier Champale
- David Doyen
- Magdalena Kobylanski
- Dominique Revuz 
theme: Darmstadt
colortheme: seagull
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


## Un outil de suivi des connaissances 

- Référentiel 
- Grains 
- Ontologie 
- Automates, graphes,
- (Des prototypes encore en vie ... )



## Exercices Autocorrigés Répétables

Initialement notre objectif était d'avoir des **exercices autocorrigés répétables**.

Soit un outil permettant aux étudiants de valider en autonomie l'acquisition de savoir faire, ou de connaissances.

Autocorrigés : car nous ne sommes pas assez disponibles.

Répétables : pouvoir se tromper mais pas éviter la difficulté.

Fournir le même service que WIMS d'aléa contrôlé.

***


# Un héritage WIMS

Un outil qui fonctionne ! 

Qualité: 

- partage
- référencement
- accessibilité
- pédagogie / didactique
- efficacité 

Mais une dette technique importante qui ne permet plus de le faire évoluer.

Ajouts, corrections, extensions informatiquement difficiles.


# Objectif 2020

Notre objectif une plateforme évolutive, gratuite, ouverte, partagée et communautaire, basée sur des fondements informatiques et scientifiques solides, une approche didactique et pédagogique inclusive où l’intelligence collective peut s’exprimer à son maximum. 

***

## Gratuite 
 Une plateforme d’enseignement ce doit d’être accessible au plus grand nombre et donc gratuite à la fois pour les enseignants et les apprenants. L’architecture permet à un enseignant de télécharger la plateforme pour un usage local (une seule machine ou un réseau local). La plateforme a une licence Cecill-B, les ressources la licence CC-by-SA2 pour partager et protéger le travail. 

## Ouverte 
 Notre développement est dans le cadre AGPL qui assure une protection juridique et permet aux développeurs de pouvoir donner de leur temps sans avoir risques. C’est le principe des logiciels libres et ouverts. Un des objectifs a cours terme est d’ouvrir plus largement à la communauté le développement logiciel.

***

## Évolutive 
 l’architecture de la plateforme est basée sur un ensemble de systèmes de développements (applications, plugins, héritage) qui privilégie la réutilisation et l’extensibilité sans compromettre portabilité, fiabilité, sécurité (en particulier la RGPD), et permet le changement d’échelle. 

## Partagée et communautaire 

Plusieurs types de communautés doivent s’agrégées autour du projet, une communauté de développeurs pour le logiciel de la plateforme, une communauté de créateurs pour le développement des nouvelles activités pédagogiques, des communautés disciplinaires pour la production des ressources. La question des communautés est un des points clefs du projet : gouvernance, gestion, mise en œuvre d’une stratégie d’intelligence collective.

***

## Fondement scientifiques solides 
 L’utilité d’une plateforme d’exercices autocorrigé n’est plus à démontrer, le projet est déjà capable de fournir ce service. L’approche didactique que nous voulons mettre en place est basé sur les travaux de l’équipe belge du FA2L. Notre équipe de projet est multidisciplinaire pour avoir un ensemble d’éclairage et un pilotage scientifique solide. Le besoin d’une démarche scientifique nous a fait poser des principes scientifiques qui orientent la conception et le développement du logiciel.

***

# Nos principes

## Le Patron c'est l'enseignant 

Au coeur du dispositif il y a l'apprenant mais pour manipuler l'outil numérique c'est le métier de l'enseignant. L’enseignant est le patron d’une session de formation. Les enseignants sont au cœur de l’enseignement c’est eux qui construisent le passage entre l’apprenant et la connaissance, l’outil se veut un assistant à l’enseignant et non pas une substitution. À terme la plateforme pourra, bien sur servir d’outil pour construire des MOOC (Massive Online Open Courses), ce n’est pas l’objectif premier.

***

# Nos principes

## La compétence disciplinaire prime 
Nous suivons le principe que « Pour enseigner des mathématiques il faut connaître des mathématiques », ce qui signifie que les enseignants d’une discipline sont les plus à même de savoir quelle activité est adéquate, et donc les premiers créateurs des exercices et des ressources ; il faut donc que la plateforme permettre de répondre aux besoins spécifiques de chaque discipline. et permette à la créativité pédagogique et didactique des enseignants de s’exprimer dans la création de ressources adéquates. 
En particulier les études menées dans le cadre du projet “WIMS-édition” (AMI 2018-2020) auquel je participe, ont mis en évidence un certains nombre d’éléments concernant l’éditorialisation des ressources que la plate-forme que je développe permet d’intégrer [6]

***

# Nos principes

## La liberté pédagogique 
La pédagogie ne doit pas être dictée par les contraintes de la plateforme, c’est au contraire la plateforme qui doit répondre aux besoins de l’enseignant. En particulier l’enseignant doit être dans un cadre permettant plus facilement :
de s’approprier le contenu disciplinaire,
d’adapter les activités aux capacités des apprenants,
d’adapter l’ordre des connaissances proposé pour se synchroniser aux autres enseignements et activités non disciplinaires, 
de choisir entre des méthodes d’ancrage mémoriel, de pédagogie de la maîtrise, de pédagogie par problèmes, pédagogie par projets, remédiation, etc. 
Nous souhaitons avoir une approche très prudente sur l’usage de profils d’étudiants, dont la valeur scientifique reste souvent à démontrer.

***

# Nos principes

## Solide en terme informatique 
Les fondamentaux informatique : la sécurité, l’ergonomie, la robustesse, la capacité à monter en charge et à être déployée sur du cloud, l’évolutivité, conformité à la loi et aux réglementations (RGPD, CNIL).
La didactique des disciplines est un phare pour la mise en place d’activités efficaces.
La plateforme doit formaliser l’expérimentation pédagogique et fournir un cadre et des outils pour des expérimentations et ce dans les cadres légaux correspondants. 
Je participe également au projet “WIMS-évolution”(PSI 2018-2020). La plate-forme WIMS, créée en 1998 par Xiao Gang est en effet un exemple dont nous nous inspirons. Cette plate-forme a de nombreux avantages et regroupe de très nombreuses qualités. Mais pour permettre d’aller plus loin, après avoir mener un certain nombre d’expérience nous avons pris le parti de privilégier la (ré)-écriture d’un nouveau logiciel. En effet les bases architecturales et des modalités de développement de WIMS ne lui permettent pas d’évoluer.

***

# une plateforme de qualité 

## Ergonomique 
Auto-apprentissage de l'usage de la plateforme,
langage de programmation des exercices simple et extensible,
Formulaire de création des exercices standards,

## Fiabilité

La fiabilité est une fonction de l'usage, plus notre logiciel sera utilisé plus il sera fiable (Méthode MS).

## Efficacité 

Nos choix techniques ne nous ont pas encore trahi.
Python3 et le framework Django.

***
## Capacité Fonctionnelle

Nous visons pertinence, exactitude, interopérabilité, sécurité et de conformité.

## Maintenabilité

C'est notre préoccupation première et notre approche est architecturale.

## Portabilité 

Pour s'éviter des problèmes de gestion de portabilité a travers différents système, deux solutions stratégique (un server de ressource centrale/unique),
un déploiement sur docker.


***

# Les objectif de l'utisateur enseignant 

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








# Pourquoi ne pas profiter des avancées en Science ?

* Informatique et TIC
* Science de l'éducation
* Sciences humaines : intelligence collective 


***

# Informatique et TIC

Premier Langage PL est un exerciseur en ligne basé sur des **technologies informatiques récentes**


**Grandes lignes philosophiques :**

* Développé par des enseignants et des étudiants

* Open-source (CecillB)

* Développement ouvert et collaboratif (pas assez)

* Technologies rationnelles et récentes

* Héritage de l'expérience des projets universitaires

* Intégration dans l'existant (moodle) plutôt que recréer (NIH) 


***

# OAV


Objectifs d'apprentissage Visées -> Acquis d'apprentissage Visées

Ecrire 


***

# Science de l'éducation


\begin{minipage}{8cm}
\includegraphics[width=0.5\textwidth]{/Users/dominiquerevuz/DJANGO/plpr/SCREENSHOTS/triforcePL.png}
\end{minipage}\hspace{-4cm}\begin{minipage}{6cm}\fbox{\begin{tabular}{@{}c@{}}
 Aquis d'apprentissage \\
 Activité pour l'ateindre \\
 Evaluation pour le validé
 \end{tabular}}
\end{minipage}
\centering
Une pédagogie alignée la "triforce".



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


***
## Screen Shots

% \include{ScreenShots.tex}
