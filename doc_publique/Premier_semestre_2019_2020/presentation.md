% Plateforme premier langage
% Premier semestre 2019-2020


# Contexte

**Premier Langage**

* est un **exerciseur polyvalent online**

* n'est pas le nom définitif de la plateforme

* est principalement **codée par des étudiants** de Marne

* est **développé publiquement** sous github

* est encore **très jeune**

* a encore une **longue roadmap** devant lui...

Activités dynamiques, A.A.V. (Acquis d'apprentissage Visés),
suivi/support des apprenants, statistiques, serveur central de
ressources, ...


# Durant le premier semestre 2019-2020

La plateforme est lancée dans l'arène...

\includegraphics[width=2cm]{UPEM_LOGO.png} À **Marne-la-Vallée** :

* L1 math-info en **calculus** (D. Doyen)

* L1 math-info en **AP1** (O. Bouillot et al)

* L3 info et ESIPE info 1  en **prog C** (N. Borie)

\includegraphics[scale=0.25]{index.png} À **Paris-sud** :

* L1 MPI en **info 111** (N. Thiéry et al)


# Exemple de déploiement en L3

*Problématique spécifique :* Les étudiants de L3 sont très hétérogènes
à la rentrée de septembre. Les élèves issus du L1-L2 local ont déjà
suivi deux semestres de cours de prog C.


La plateforme est utilisée ici comme un **support** à utiliser **en
autonomie** pour rattraper le peloton. Voici l'entrée dans moodle.

\includegraphics[scale=0.4]{moodle_entree.png}


# Exemple de déploiement en L3

*Monsieur, qu'est ce qui faut faire pour réviser ? Non parce que c'est
dûr et ça va vite...*

* **Avant PL : **

Et bien essayer de refaire doucement les TP chez vous. Tentez de lire
ce cours ou encore ce cours sur le web (dont je ne connais pas
totalement les contenus).

* **Avec PL : **

Faites les exercices sous PL et contactez moi si vous avez des
problèmes. 

  - Je contrôle alors les contenus
  - Je peux suivre l'activité en temps réel.
  - Je peux piloter/mesurer/encadrer les révisions et remises à niveau
    (pointer une ressource)


# Exemple de déploiement en L3

Actuellement, une centaine d'exercices déployés et classés dans 12 fiches thématiques :

* Notion de programme
* Variables
* Types
* Fonctions
* Tableaux
* Chaînes de caractères
* Structures
* Macros préprocesseur
* Entrées/sorties
* Récursivité
* Allocation dynamique
* Opérateurs bit à bit


# Exemple de déploiement en L3

Voici l'écran du cours de prog C pour les L3 de Marne... 

Visualisez les 12 fiches demanderait de glisser un peu vers le bas.

\includegraphics[scale=0.23]{cours.png}

# Visualisation des résultats

Via le tableau de bord enseignant, on peut voir les résultats de
chaque élève (rattaché au cours moodle et qui est venu travaillé sur
la plateforme...). Les résultats sont aussi téléchargeables en CSV (et
ainsi chargeable en tableur).

\includegraphics[width=11cm]{resultat_par_eleve.png}


# Traces des apprenants

BDD Django brute des logs de la sandbox (table answers).

\includegraphics[width=11cm]{log_answers.png}



# Traces des apprenants

* **238 000 traces** stockées (contexte + contenu des formulaires) le 7 janvier 2020

* traces produites par environ **900 étudiants**

* **2 000** appels sur la sandbox **par jour**

* **9 500 appels** sur la sandbox le 5 janvier (pic d'utilisation)

* **2-3 crashs** depuis septembre 2019 (jamais plus de 2 heures (merci Nicolas Cuvelier !)) \
  (dernier crash en novembre : augmentation de la RAM des sandbox pour Clang et le C++ pour Paris-sud)

* service en continu, jour et nuit, durant les vacances, ...

Utilisation en TP, en groupe ou en autonomie totale à la maison. La
plateforme fonctionne sous n'importe quel navigateur Web y compris
sous smartphone.


# Suivi des élèves

Le suivi des apprenants est en **plein développement**...

* module d'extraction de **statistiques** (as a service)

* nombreux **dashboards** à écrire/corriger/améliorer

* **notifications** et messages

* gestion d'événements et **alertes** (trigers auto ?)

* ...

**Objectif :** comprendre/expliciter son apprentissage, identifier ses
points faibles, réagir plus vite, valider des capacités, ...


# Activité de niveau supérieur

L'autre volet de travail de la plateforme à moyen terme

* Activité **atelier** (dépôt de rendu, mélange, correction aveugle par les pairs)

* Activité **révision** (intelligente, la plateforme propose les exos...)

* Meilleure **gestion de la temporalité**

* Activité **amphi** (vote en direct sur téléphone...)

* **Mode examen**

Besoin croissant d'activités intelligentes. La faisabilité technique
est là. Les limites de la plateforme en terme d'interactions
utilisateur sont celles des navigateurs web. Les limites en terme de
programmation sont celle du langage Python.


# Conclusion

La plateforme 

* est jeune mais elle fonctionne !

* est toujours extensible et malléable !

* a démontré sa robustesse ce semestre !

\bigskip

\begin{center}
\textbf{.: La plateforme vous attend, fidèle au poste :.}
\end{center}
