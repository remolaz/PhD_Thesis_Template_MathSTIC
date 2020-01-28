<p align="center">
  <a href="https://www.overleaf.com/latex/templates/phd-thesis-template-for-mathstic-doctoral-school-of-the-universite-bretagne-loire/rwgqmttyhnjd">
    <img src="https://update.lib.berkeley.edu/wp-content/uploads/2017/08/Screen-Shot-2017-08-09-at-2.37.59-PM-1-300x157.png" /> </a>
	<br><a href="https://www.overleaf.com/latex/templates/phd-thesis-template-for-mathstic-doctoral-school-of-the-universite-bretagne-loire/rwgqmttyhnjd"> Overleaf Template with IEEE bibliography</a>
	<br>If you want to contribute to the project, please send me an email <a href="mailto:remo.lazazzera@univ-rennes1.fr?subject=Hi! Id like to collaborate in the MathSTIC thesis project">here</A>.
</p>

# ![(French flag)](https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/50px-Flag_of_France.svg.png) Modèle de thèse MathSTIC avec Biblio IEEE

*Explications en français*

Ce dépôt contient un modèle latex utilisable pour le manuscrit de thèse de l'[école doctorale MathSTIC](https://ed-mathstic.u-bretagneloire.fr/) de l'[Université Bretagne Loire](https://u-bretagneloire.fr/).

Ce modèle a pour but principal de fournir une première et une quatrième de couverture du manuscrit de thèse intégralement écrites en latex.
Ces couvertures ont été (manuellement) calquées sur le modèle original au format MS Word fourni par MathSTIC en 2018.
Tandis que la couverture du manuscrit se doit de respecter le format établi par MathSTIC, la disposition du contenu interne du manuscrit est elle plus flexible.
La disposition proposée dans ce modèle est donc donnée à titre d'exemple mais il n'est cependant pas obligatoire de la respecter.


### Structure du dépôt

- `main.tex` contient le squelette du document, aucun texte du manuscrit n'est présent dans ce fichier
- `these-ubl.cls` contient les dépendances, les paramètres de la bibliographie et les paramètres de mise en page globale du manuscrit et plus particulièrement des deux couvertures
- `Couverture-these/pagedegarde.tex` contient les variables à remplir par l'auteur pour compléter la page de garde, ces variables sont utilisées par `\maketitle` redéfini dans `these-ubl.cls`
- `Couverture-these/resume.tex` contient les variables à remplir par l'auteur pour compléter la quatrième de couverture, ces variables sont utilisées par les macros définies dans `these-ubl.cls`
- Le `Makefile` vous aide à compiler le latex et la bibliographie en un pdf (détails plus bas)
- Les autres dossiers contiennent chacun un chapitre du document


### Remplir la première et quatrième de couverture

Les informations de la page de garde doivent être renseignées dans les variables du fichier `Couverture-these/pagedegarde.tex`.
Modifier la disposition des éléments de la page de garde présente dans `these-ubl.cls` ne devrait  être nécessaire que pour rajouter quelques `\vspace` pour préserver la structure original après avoir renseigné la composition du jury.

Les variables relatives à la quatrième de couverture sont à renseigner dans `Couverture-these/resume.tex`.


#### Changer l'établissement de délivrance du diplôme

Vous devez modifier deux variables dans `Couverture-these/pagedegarde.tex` :

- `\unite` contient le nom complet de l'établissement qui délivre le diplôme
- `\logoetablissement` contient le chemin vers l'image du logo de l'établissement, une liste de logos est fournise dans le dossier `Couverture-these/MathSTIC/logo-etablissements/`.


### Compiler le latex en pdf

Le `Makefile` fournis vous aide à compiler votre document.
Il utilise `pdflatex` et `biber` pour générer le fichier pdf et peut l'afficher grâce à `evince` sur Linux et `open` sur MacOS.

Compiler votre document avec `pdflatex/biber` :

    make

Afficher le pdf généré :

    make viewpdf

Suppimer tous les fichiers générés, pdf inclus :

    make clean


### Spécificités d'un document multilingue

La liste des langues utilisées est définie à la ligne 28 de `these-ubl.cls` où le paquet `babel` est importé.
Etant donné que la quatrième de couverture contient du français et de l'anglais, il est nécessaire de conserver au moins ces deux langues dans la liste.
Il faut utiliser `\selectlanguage{x}` (où x est `french` ou `english`) pour changer de langue après son insertion.

Si la langue principale du contenu du document est le francais, vous devez effectuer quelques modifications au modèle :

- utiliser `\selectlanguage{french}` à la ligne 17 de `main.tex`
- modifier la ligne 437 de `these-ubl.cls` pour remplacer `Part` par `Partie` dans les entêtes
- éliminer le résumé en français d'au moins 4 pages


### Changer la police du contenu

La police imposée pour les couvertures est Arial mais vous pouvez utiliser une autre police pour le contenu de la thèse en modifiant les lignes 77-78 de `these-ubl.cls`.
Actuellement la police par défaut de latex est celle utilisée pour le contenu.


-----

# ![(UK flag)](https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/50px-Flag_of_the_United_Kingdom.svg.png) MathSTIC thesis template with IEEE Biblio

*English explanations*

This repository contains a template for the thesis manuscript of the [MathSTIC doctoral school](https://ed-mathstic.u-bretagneloire.fr/en) of the [Université Bretagne Loire](https://en.u-bretagneloire.fr/).

The main goal of this template is to provide both front and back covers of the thesis manuscript entirely written in latex.
These covers have been (manually) reproduced from the original MS Word model provided by MathSTIC in 2018.
While the manuscript covers must follow the rules of MathSTIC, the internal layout of the content is more flexible.
The content layout provided in this template is therefore given as an exemple rather than as a  mandatory framework.


#### Structure of the repository

- `main.tex` contains the backbone structure of the document, no content is present in this file
- `these-ubl.cls` contains the package dependencies, bibliography parameters and overall layout specifications including both front and back cover layouts
- `Couverture-these/pagedegarde.tex` contains the variables that must be filled by the author to complete the front cover, these variables are used in `\maketitle` redefined in `these-ubl.cls`
- `Couverture-these/resume.tex` contains the variables that must be filled by the author to complete the back cover, these variables are used in the macros defined in `these-ubl.cls`
- The `Makefile` helps you compile the latex and bibliography into a pdf (details below)
- The rest of the directories each contain one chapter of the document


#### Fill the front and back cover

The front cover details must be provided by filling the variables in `Couverture-these/pagedegarde.tex`. Modifying the front cover layout defined in `these-ubl.cls` should only be necessary to preserve the original layout after filling the jury section by adding a few `\vspace`.

The back cover variables that must be filled are in `Couverture-these/resume.tex`.


##### Change the institution that delivers the diploma

You have to modify two variables in `Couverture-these/pagedegarde.tex`:

- `\unite` contains the full name of the institution that delivers the diploma
- `\logoetablissement` contains the path to the image of the logo of the institution, a list of logos is provided for you in the directory `Couverture-these/MathSTIC/logo-etablissements/`


#### Compile latex into pdf

A `Makefile` is provided to help you compile your document. It uses `pdflatex` and`biber` to generate the pdf file and can display it by using `evince` on Linux or `open` on MacOS.

Compile your document with `pdflatex/biber`:

	make

Display the generated pdf:

	make viewpdf

Remove all generated files, pdf included:

	make clean


#### Particularities of a multilanguage document

The list of used languages is defined at line 28 of `these-ubl.cls` where the package `babel` is imported.
As the back cover contains both French and English, it is necessary to keep at least both these languages in the list.
Use `\selectlanguage{x}` (where x is `french` or `english`) to switch language after its usage.

If the main language of your document is English, you must apply the following changes to the provided template:

- use `\selectlanguage{english}` at line 17 of `main.tex`
- edit line 437 of `these-ubl.cls` to replace `Partie` by `Part` in the headers
- include a summary in French of at least 4 pages


### Change the content font

The required font for the covers is Arial but you can use another font for the content of the thesis by editing lines 77-78 of `these-ubl.cls`.
Currently the latex default font is the one used for the content.


-----

[Template] PhD Thesis MathSTIC

https://github.com/remolaz/PhD_Thesis_Template_MathSTIC

This repository contains a template for the thesis manuscript of the MathSTIC doctoral school.

Thanks to Louiza Yala, Pierre-Louis Roman, Lucas Bourneuf, Corentin Guezenoc and Remo Lazazzera.

Original Git repository: https://gitlab.inria.fr/proman/mathstic-thesis-template

