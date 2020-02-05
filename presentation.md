
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

- très hétérogènes (culture, prérequis, méthodes)
- option en Première et Terminale (NSI)
- très nombreux (L1 dans chaque licences)
- ayant de mauvaises stratégies d'apprentissage 
- ayant grands besoins de feedback (réguliers et personnalisés)
- souhaitant d'autres pédagogies, désynchronisés, inversés, autonomes 


**Des enseignants**

- pas assez nombreux, l'informatique est spécialement sous dotée
- pas amateurs de correction de copies 
- ayant besoin d'outils de synchronisation pour rationaliser les
 interventions des grosses équipes pédagogiques
- devant mettre les élèves au **travail** ! qqcvd



# Objectifs initiaux de la plateforme 


+ Un outil de suivi des connaissances

+ Mes échecs productifs

+ Exerciseur multi-matières

+ WIMS, dette

+ Répétable

+ Langage de programmation 




# Objectif général 

Notre objectif est la production d'une plateforme **évolutive**, **gratuite**,
**ouverte**, **partagée** et **communautaire**, basée sur des **fondements
informatiques et scientifiques** solides, une **approche didactique et
pédagogique** inclusive où l’**intelligence collective** peut s’exprimer à
son maximum.



# Objectifs généraux 

+ Gratuite 

+ Ouverte 

+ Évolutive 
 
+ Partagée et communautaire 

+ Fondement scientifiques solides 



# Nos principes

- Le patron c'est l'enseignant 

- La compétence disciplinaire prime 

- La liberté pédagogique 

- Solide en terme informatique 

- Développement par des enseignants et des étudiants

- Technologies rationnelles et récentes

- Héritage de l'expérience des projets universitaires

- Intégration dans l'existant (moodle) plutôt que recréer (NIH) 


# Une plateforme de qualité 

## Ergonomique 
Auto-apprentissage de l'usage de la plateforme,
langage de programmation des exercices simple et extensible,
formulaire de création des exercices standards,

## Fiabilité
La fiabilité est une fonction de l'usage, plus notre logiciel sera
utilisé plus il sera fiable (Méthode MS).

## Efficacité 
Nos choix techniques : Python3 et le framework Django, ne nous ont pas
encore trahi.


# Une plateforme de qualité 

## Capacité Fonctionnelle
Nous visons pertinence, exactitude, interopérabilité, sécurité et
conformité.

## Maintenabilité
C'est notre préoccupation première et notre approche est
architecturale.

## Portabilité 
Pour s'éviter des problèmes de gestion de portabilité a travers
différents systèmes, deux solutions stratégiques (un server de ressources
central/unique), un déploiement sur docker.


# Objectif 2020

+ Une **pédagogie alignée** (triforce)

+ Intégration du **suivi** individuel et collectif

+ Création d'un outil **search & compose** 

+ Organisation des ressources 

+ Deux types des serveurs **Assets** et **Resources**

+ Développement de la communauté


#  Une pédagogie alignée


\begin{minipage}{8cm}
\includegraphics[width=0.5\textwidth]{SCREENSHOTS/triforcePL.png}
\end{minipage}\hspace{-4cm}\begin{minipage}{6cm}\fbox{\begin{tabular}{@{}c@{}}
 Aquis/Objectifs d'apprentissage \\
 Activité pour l'atteindre \\
 Evaluation pour valider l'aquisition
 \end{tabular}}
\end{minipage}
\centering
Une pédagogie alignée la "triforce".

# Notion centrale d'objectifs (OAV, AAV)

La notion d'AAV est basé sur une idée d'**objectivation de l'acquisition
d'une connaissance**, un savoir faire, une compétence.  Pour cela on va
exprimer l'**objectif** de formation sous forme d'une phrase **explicitant**
ce que l'on peut **observer** cher l'apprenant qui nous permet de **valider**
(automatiquement ou humainement) l'acquisition.


# Acquis d'Apprentissage Visé (slide FA2L)

\includegraphics[width=0.8\textwidth]{SCREENSHOTS/CanvasAAV.png}


#  Intégration du suivi individuel et collectif

\includegraphics[width=0.8\textwidth]{SCREENSHOTS/aavSuivi.png}

Organisation arborescente. Acquis/en cours/pas acquis/non débuté.

# Idées pour le suivi collectif 

\includegraphics[width=0.8\textwidth]{SCREENSHOTS/suiviCollectif.png}


# Organisation des ressources 

Les ressources sont partagées en **CC-by-SA**, l'édition concurrente est
donc possible, la base de données gère la concurrence par des numéros de
version. En cas d'édition concurrente, un éditeur de différences est
proposé à l'utilisateur.

Les ressources ont des systèmes de d'étiquetages: 

- **Scientifique** : computerScience/Programming/Python/Functions/Return
  Value/...
- Par **niveau scolaire** : cp/ce1/ce2/..../M2/D
- Par **niveau de bloom** :
  reconnaissance/usage/composition/analyse/critique/création
- Par **type** : lecture, exo, quiz, calcul, raisonnement, composition,
  etc

# Création d'un outil search & compose 

Objectif je suis en cours j'ai besoin d'une ressource sur un sujet.
J'ai donc déjà rempli en partie l'étiquetage scientifique mon cours
est déjà étiqueté : ComputerScience/Programming/Python.

Je souhaite un exercice ou une feuille.

Je cherche quel que chose sur les fonctions.

Le système cherche soit un AAV soit un exercie soit une feuille. 

Le résultat de la recherche est une liste de ressources.
Je peux inserer (drag & drop) dans mon cours les ressources qui me conviennent.

Si le resultat est un AAV il me donne accès au O&R Objectif & Ressource, une partie à la stackoverflow du site.

De nouveau je peux récuperer une ressource et la placer dans mon cours.

 




# Deux types des serveurs  Assets Resources 

Pour gérer la montée encharge nous organisons le projet en deux types de serveurs.

Le serveur de ressources qui gère le partage la curation et la distribution des ressources.

Les serveurs d'assets qui permettent de distibuer la charge de l'activité d'enseignement et d'apprentissage. 

  Asset = Instanciation locale d'une Ressource.

-l'exécution des activites
-Le reporting 
-le suivi 
-la gestion 





# Développement de la communauté

C'est une problèmatique sur laquelle nous travaillons en ce moment.

Le fait que nous ayons des experiences positives:

- pas de plantage du code PL depuis le 15 octobre
- une fuite de threads (environ 2 par jours) sur la sandbox
- des étudiants contents (10k summissions en une journée)
- une écriture d'exercice a améliorer
- puissance de l'écriture des exercices 





# Utiliser l'intelligence collective 

Définir une éditorialisation efficace qui permet de produire et qualifier les ressources.

* suffisssament modulaire
* foisonement de petites actions (validation, correction, idée, code, classement) wikipedia 
* conserver l'ouverture et le partage de WIMS
* qualification par l'usage: ce qui sert et ce qui est utile 
* qualification par l'expertise (cercle, karma, savante)
* rôles multiples -> il ne faut pas tout savoir 



***
# PLaTon 2020
Pour les étudiants : désynchronisation, essai erreur, métacognition (temps, profondeur).

Pour les enseignants : un lieux de rencontre, de ressources (exercices, AAV, activités, évaluations, cours,etc).

#  PLaTon 2020

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
# Les OAV

Les Acquis d'apprentissage visées. 

- Objectifs de formation
- Grains de connaissance
- Mesurables (observables)
- SMART Specific, Mesurable, Achievable, Realisatic, Temporaly Defined 



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


# Search & Compose 

Rapatriment Multi-echelles des Ressources. 


Interfaces en fin de présentation 





***

# Responsable de formation

Le responsable de formation n'a accès qu'aux AAV.
Sauf si le prof lui donne effectivement accès au cours (co-prof,prof non editeur).

Accès aux statistiques mais pas a des informations individuelles.

Le jury est fait avec des AAV !

Le RF peut vérifier la cohérence des cours dans la formation et les AATP

Plaquette on one click !!


***


# Questions 


Deux présentations en plus.

* Des maquettes de l'interface utilisateur 

* Comment écrire un exercice 



# Une communauté 


Vous si vous le voulez !

https://elearning.u-pem.fr

Compte extérieur 
login EssoxLucius1 
password EssoxLucius1 



# Niveaux d'expertise 

\includegraphics[width=0.8\textwidth]{bloom.jpg}

