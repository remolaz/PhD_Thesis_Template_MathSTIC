% Cette classe de document est basee sur [report].
% Assurez vous d'avoir installe tous les paquets utiles
%%%%%% Licence%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% la classe LaTeX these-ubl 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROPOSITION DE TEMPLATE POUR THESE DE L'UBL par L.YALA (Doctorante IRISA-UR1, Juin 2018)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Revision des en-tetes et prise en compte de [twoside]
% Revision de la gestion de la bibliographie avec BiblaTex
% Ajouts de boites et encarts grises
% revision de l'enchainement des chapitres
% Mise aux normes typographiques suivant les Regles Typographiques
% en usage \`{a} l'Imprimerie Nationale


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%these-ubl
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{these-ubl}[18/04/2018 v4.0]

\LoadClass[twoside,multicol,11pt,a4paper]{report}	% notez le "twoside", essentiellement pour alterner les en-tete et pieds de page gauche et droit si on veut utliser les fancyhead. 

\RequirePackage[utf8]{inputenc} 

% To use HyperRef in BIBLIO
\RequirePackage[square,numbers]{natbib}
\RequirePackage{hyperref} %Utiliser pour une bibliographie interactive + sommaire et TOC interactifs (pour une sortie PDF, par exemple).
\renewcommand{\bibnumfmt}[1]{[#1]} % per correggere il baco

\renewcommand{\chapterautorefname}{Chapter}
% per \autoref invece di "chapter" ho "Chapter"

\RequirePackage[english,french]{babel} % Last language is the default, use \selectlanguage{english} to switch
\RequirePackage{ifpdf}
\RequirePackage[usenames,dvipsnames]{color} % pour les couleurs
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{parcolumns}
\RequirePackage{multicol}
\RequirePackage[T1]{fontenc} % permet de sp\'{e}cifier \`{a} LaTeX l'utilisation du codage de caract\`{e}res T1, nouvelle norme LaTeX non utilis\'{e}e par d\'{e}faut pour des raisons de compatibilit\'{e} avec les anciens documents LaTeX.
\RequirePackage{lmodern} % Assurer une bonne impression!
\RequirePackage{tikz} % tikz est utilise pour tracer des boites, par exemple
\RequirePackage{fix-cm}
\RequirePackage{abstract}
\RequirePackage{graphicx} % Pour ins\'{e}rer des images. Utiliser le format jpg pour plus de simplicit\'{e}.
\RequirePackage{sectsty} % obligatoire, pour jouer avec l'apparence des titres
\RequirePackage{shorttoc} % pour le sommaire, au debut.
\RequirePackage{fancyhdr} % Afin de r\'{e}aliser soi-même les en-têtes et pieds de page, voir chaque d\'{e}but de chapitre.
\RequirePackage{pifont} % Pour utiliser des symboles divers.
\RequirePackage{color}
\RequirePackage{comment}
\RequirePackage{wallpaper}
%\definecolor{mypink1}{rgb}{Pink with rgb}
\RequirePackage[inner=30mm,outer=20mm,top=30mm,bottom=20mm]{geometry}
\RequirePackage{setspace}
%Ou bien : \RequirePackage[top=4 cm, bottom=4 cm, left=3 cm, right=3 cm]{geometry} % On peut modifier ces valeurs pour augmenter ou r\'{e}duire les marges. Attention aux en-têtes de chapitres. 
\RequirePackage{epigraph} % \cleartoevenpage

\RequirePackage{setspace} % permet d'utiliser les commandes \spacing, doublespace (double interligne), singlespace (simple interligne) et onehalfspace (un interligne et demi)

\hypersetup{colorlinks=true, citecolor=blue, filecolor=black, linkcolor=black, urlcolor=black}

\RequirePackage{framed} % utilise pour coloriser les encarts

\onehalfspacing %Interligne 1,5

\RequirePackage{ifthen} % Entrer valeurs bool\'{e}ennes et autres options
\RequirePackage{csquotes} % Assurer les guillemets français
\frenchspacing
\FrenchFootnotes

% Define commands to set fonts throughout the document
\newcommand*{\selectfontfrontcover}{\fontfamily{phv}\selectfont}  % Font style used in front cover 
\newcommand*{\selectfontbackcover}{\fontfamily{phv}\selectfont}   % Font style used in back cover 
\newcommand*{\selectfontchapheads}{\fontfamily{phv}\selectfont} % Font style used chapter headings

% Override default font here if you want
%\renewcommand{\rmdefault}{qpl}
%\renewcommand{\sfdefault}{qpl} 

%%%%%%%%%%%%%% En-tete chap %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\@makechapterhead#1{%
  \vspace*{-30\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \@chapapp{} \thechapter
        \par\nobreak
        \interlinepenalty\@M
    \selectfontchapheads \Huge \bfseries #1\par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 50\p@
  }}
\def\@makeschapterhead#1{%
 \vspace*{-50\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \vphantom{\@chapapp{} \thechapter}
        \par\nobreak
        \interlinepenalty\@M
    \selectfontchapheads \Huge \bfseries #1 \par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 30\p@
  }}

%%%%%%%%%%%%%%%%%%%% Fin en-tête de chapitre %%%%%%%%%%%%%%%%%%%

%%%%%%%%%%% Tete de parties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\newcommand*{\jolipart}[1]{%
	\begin{center}
		\begin{Huge}\color{black}
			#1
		\end{Huge}
		\end{center}
		\vspace{1cm}		
	\begin{center}
%\begin{Huge}
		%\ding{167}
	%\end{Huge}	
	\hrulefill
	\end{center}		
	}


\parttitlefont{\jolipart}

\partnumberfont{\sc\normalsize}

%%%%%%%%%%%%%%%% COULEURS RGB de l'ED%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{grisfonce}{RGB}{49,49,49}
\definecolor{grisclair}{RGB}{111,111,111}
\definecolor{blanc}{RGB}{255,255,255}
\definecolor{mathSTIC-Color}{RGB}{233,90,104} %MathSTIC 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% %%%%%%%%%%%%%%%%%% REGLAGE DE LA BIBLIOGRAPHIE %%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%% ATTENTION, on utilise Biblatex %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % \RequirePackage[style=verbose-trad1,hyperref,backend=biber]{biblatex} %Pour le style 
% \RequirePackage[style=numeric,hyperref,backend=biber]{biblatex} %Pour le style 
% % biblatex avec gestion des mots cl\'{e}s des entr\'{e}es bibliographiques
% % + les abbr\'{e}viations idem, ibidem, op cit. N\'{e}cessite de pr\'{e}voir un fichier
% %  bib contenant ces mots-cl\'{e}s. Vous pouvez changer l'option verbose-trad1 
% % pour une autre (cf. manuel de biblatex).
% % ATTENTION : l'option backend=biber est utilis\'{e}e. En effet les dernieres
% % versions de biblatex pr\'{e}conisent l'option biber pour profiter des derni\`{e}res
% % nouveaut\'{e}s. Si vous choisissez cette option (backend=biber), il vous faut
% % simplement compiler avec $biber nomdufichier (sans le .tex). Si vous voulez
% % en rester \`{a} bibtex,il vous suffit de placer backend=bibtex.


% \defbibheading{primary}{\section*{Sources primaires}} % Categorie (sous forme de section) pour le tri de la bibliographie.

% \defbibheading{secondary}{\section*{Sources secondaires}} % Categorie (sous forme de section) pour le tri de la bibliographie.

% \renewcommand*{\newunitpunct}{\addcomma\space} % Virgule entre les parties d'une reference (merci a Josquin Debaz)

% %%%% Ajustements pour la bibliographie
% %\DeclareFieldFormat[article]{volume}{\textbf{#1}}  %Le numero de volume en gras
% \DeclareFieldFormat[article]{number}{\textit{#1}} %Le numero dans le volume en italique
% %\DeclareFieldFormat{pages}{page(s): #1} % page(s) en toutes lettres, si on veut...

% % \renewcommand{\mkibid}[1]{\emph{#1}} %Les locutions latines en italique (comme ibid, loc.cit. , etc.) Merci \`{a} Josquin Debaz

% % Et pour mettre le in en italique dans la ref\'{e}rence biblio (merci encore \`{a} Josquin Debaz)
% \DefineBibliographyStrings{english}{%
%         in = {\emph{in}}%
% }


%%%%%%%%%%%%%%%%%% Interligne simple pour citations et vers %%%%%%%%%
%% Environnements: QUOTE, QUOTATION, VERSE
% Copyright (C) 2002 Mike Nolta <mrnolta@princeton.edu>, GPL V. 2.0 and
% later version. http://www.physics.princeton.edu/cosmology/computing/PrincetonThesis.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\let\orig@quote\quote
\let\endorig@quote\endquote
\renewenvironment*{quote}
	{\begin{orig@quote}\begin{singlespace}}
	{\end{singlespace}\end{orig@quote}}

\let\old@quotation\quotation
\let\endold@quotation\endquotation
\renewenvironment*{quotation}
	{\begin{old@quotation}\begin{singlespace}}
        {\end{singlespace}\end{old@quotation}}

\let\old@verse\verse
\let\endold@verse\endverse
\renewenvironment*{verse}
	{\begin{old@verse}\begin{singlespace}}
        {\end{singlespace}\end{old@verse}}

%%%%%%%%%%%%%%%% TITRE THESE PAGE DE GARDE %%%%%%%%%%%%%%%%

% Logo ecole doctorale
\newcommand*{\logoecoledoc}[1]{\gdef\@logoecoledoc{#1}}
\logoecoledoc{}

% Logo etablissement delivrant le diplome
\newcommand*{\logoetablissement}[1]{\gdef\@logoetablissement{#1}}
\logoetablissement{}

%%%% Eventuel sous-titre
\newcommand{\lesoustitre}[1]{\gdef\@lesoustitre{#1}}
\lesoustitre{}

%%%% Discipline
\newcommand{\discipline}[1]{\gdef\@discipline{#1}}
\discipline{}

%%%% Jury
\newcommand{\jury}[1]{\gdef\@jury{#1}}
\jury{}

%%%% Laboratoire / department / unit\'{e}
\newcommand{\unite}[1]{\gdef\@unite{#1}}
\unite{}

%%%%% Ecole doctorale
\newcommand{\ecoledoc}[1]{\gdef\@ecoledoc{#1}}
\ecoledoc{}

%%%%% Nom ecole
\newcommand{\nomecole}[1]{\gdef\@nomecole{#1}}
\nomecole{}

%%%%% Sp\'{e}cialit\'{e}
\newcommand{\spec}[1]{\gdef\@spec{#1}}
\spec{}

%%% Ville de soutenance
\newcommand{\lieu}[1]{\gdef\@lieu{#1}}
\lieu{}

%%% Unite de recherche
\newcommand{\uniterecherche}[1]{\gdef\@uniterecherche{#1}}
\uniterecherche{}

%%% Num\'{e}ro de la th\`{e}se
\newcommand{\numthese}[1]{\gdef\@numthese{#1}}
\numthese{}

%%%%%%% Nom complet de l'ubl
\newcommand{\ubl}[1]{\gdef\@ubl{#1}}
\ubl{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define some font sizes specific to the front cover
\newcommand{\HugeFront}{\fontsize{26}{31}\selectfont} % Used in 'these de doctorat' title
\newcommand{\LargeFront}{\fontsize{16}{19}\selectfont} % Used in thesis title

%mise en page de la page de garde
\makeatletter
\def\maketitle{%
  % Définit les variables des logos pour la quatrième de couverture (variables \@ inutilisables)
  % Define the variables containing the logos for the back cover (can't use the \@ variables)
  \newcommand{\pathlogoecoledoc}{\@logoecoledoc}%
  \newcommand{\pathlogoetablissement}{\@logoetablissement}%
  %
  \thispagestyle{empty}
  \clearpage
  \begin{tikzpicture}[remember picture,overlay,line width=0mm]
  \draw [draw=white,fill=white]
    (current page.north west) rectangle (\paperwidth,1);
  \node[xshift=0.04\paperwidth,yshift=2cm,text=white,font=\bf\Large] {
  \includegraphics[width=5cm]{\@logoecoledoc}
  };
  \node[xshift=.6\paperwidth,yshift=2cm,text=white,font=\bf\Large] {
  \includegraphics[width=5cm]{\@logoetablissement}
  };
   \node at (current page.center)
{\parbox{17.6cm}{
\vspace{3.6cm}

\selectfontfrontcover % Set font style for front cover page

{\HugeFront \textsc{Th\`{e}se de doctorat de}} \\

%\begin{huge}
%\ding{167}
%\end{huge}

\vspace{2.1cm}

{\setlength{\baselineskip}{0.9\baselineskip} {\large {\@unite}} \\
{\textsc{\@ubl}} \\
\par}
\vspace{0.01cm}
{\setlength{\baselineskip}{0.7\baselineskip}
{\small\textsc{\@ecoledoc}} \\
 \textit{\@nomecole} \\
\@spec

\fontsize{12}{10}\selectfont
\vspace{0.5cm}
\hspace{0.6cm}Par \vspace{0.15cm}
\par}
\hspace{0.6cm}{\LARGE\textbf{\@author}} \vspace{0.5cm}

{\LargeFront\textbf{\@title}} \vspace{0.5cm}
	
{\large{\@lesoustitre}} \vspace{0.5cm}
\begin{spacing}{1}
	 \small
  \textbf{Th\`{e}se pr\'{e}sent\'{e}e et soutenue \`{a} \@lieu, le \@date} \\
	 \textbf{\@uniterecherche} \\
	 \textbf{\@numthese}
\end{spacing}
\vspace{1.1cm}
	\begin{small}
	\begin{spacing}{1}
		 \@jury
	\end{spacing}
	\end{small}
}
};
\end{tikzpicture}
}

\makeatother




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% QUATRIEME DE COUVERTURE %%%%%%%%%%%%%%%%
\newcommand{\backcoverheader}{%
\AddToShipoutPicture*{%
    \put(0,0){%
    \parbox[b][\paperheight]{\paperwidth}{%
        \vfill
        \includegraphics[width=\paperwidth,keepaspectratio]{./Couverture-these/MathSTIC/image-fond-MATHSTIC-dos.png}%
        \vfill
}}}
\pagestyle{empty}
\hspace{1cm}
\begin{tikzpicture}[remember picture,overlay,line width=0mm]
  \draw [draw=white]
    (current page.north west) rectangle (\paperwidth,1);
  \node[xshift=0.03\paperwidth,yshift=2cm,text=white,font=\bf\Large] {
  \includegraphics[width=5cm]{\pathlogoecoledoc}
  };
  \hfill
  \node[xshift=.55\paperwidth,yshift=2cm,text=white,font=\bf\Large] {
  \includegraphics[width=5cm]{\pathlogoetablissement}
  };
\end{tikzpicture}
\par\nobreak
}

\newcommand{\titleFR}[1]{%
\vspace{1cm}
{\centering \noindent \textcolor{mathSTIC-Color}{\rule{\textwidth}{0.2cm}}}
\vspace{-1cm}
\selectlanguage{french}
\section*{\selectfontbackcover\small\textcolor{mathSTIC-Color}{Titre : }{\selectfontbackcover\mdseries{#1}}} % In this particular case, font style needs to get re-selected locally
}

\newcommand{\keywordsFR}[1]{%
\vspace{-0.2cm}
\noindent{ \small \textbf{Mot cl\'{e}s : }#1}
}

\newcommand{\abstractFR}[1]{%
\vspace{-0.2cm}
\begin{multicols}{2}
\begin{small}
\begin{spacing}{1}
	\noindent \textbf{R\'{e}sum\'{e} : }#1
\end{spacing}
\end{small}
\end{multicols}
}

\newcommand{\titleEN}[1]{%
\vspace{0.5cm}
{\centering \noindent \textcolor{mathSTIC-Color}{\rule{\textwidth}{0.2cm}}}
\vspace{-1cm}
\selectlanguage{english}
\section*{\selectfontbackcover\small\textcolor{mathSTIC-Color}{Title: }{\selectfontbackcover\mdseries{#1}}} % In this particular case, font style needs to get re-selected locally
}

\newcommand{\keywordsEN}[1]{%
\vspace{-0.2cm}
\noindent{ \small \textbf{Keywords: }#1}
}

\newcommand{\abstractEN}[1]{%
\vspace{-0.2cm}
\begin{multicols}{2}
\begin{small}
\begin{spacing}{1}
	\noindent \textbf{Abstract: }#1
\end{spacing}
\end{small}
\end{multicols}
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% En-tetes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%% Pour suppirmer les entetes et pied de page gênants par exemple juste avant un chapitre sur une page de droite
\newcommand{\clearemptydoublepage}{%
   \newpage{\pagestyle{empty}\cleardoublepage}}
%%%% .... et utiliser la commande \clearemptydoublepage juste avant le \chapter


    \fancyhf{}                       % on annule le fancy automatique
   

%%%%%%%%%% Gerer les en tetes dans les frontmatter mainmatter et backmatter
\RequirePackage{geometry}
\RequirePackage{etoolbox}

\appto\frontmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\chaptermark}[1]{\markboth{\textit{#1}}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{\small\leftmark}   % \rightmark = section courante
    \fancyhead[LE]{\small\leftmark} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre
}

\appto\mainmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\textit{\thesection.\ #1}}}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername~\thechapter~--\ \textit{#1}}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{\small\rightmark}   % \rightmark = section courante
    \fancyhead[LE]{\small Part\thepart, \leftmark} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre
}     

\appto\backmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername~\thechapter~--\ #1}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{}   % \rightmark = section courante
    \fancyhead[LE]{} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre

} 


%%%%%%%%%%%%%% FAIRE DES ENCARTS %%%%%%%%%%%%%%%%%%%%%%%%%%
% Couleurs :


\definecolor{fondtitre}{RGB}{85,85,85}
\definecolor{fonddeboite}{RGB}{232,232,232}
\definecolor{shadecolor}{RGB}{232,232,232}

\ProcessOptions

%%%%%%%%%% Boitemagique  %%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\boitemagique}[2]{
\begin{center}
\begin{tikzpicture}
% la boite
\node[rectangle,draw=fondtitre!100,fill=fonddeboite!100,inner sep=10pt, inner ysep=20pt] (mabox)
{
\begin{minipage}{12cm}
#2
\end{minipage}
};
% le titre de la boite
\node[fill=fondtitre!100, text=white, rectangle] at (mabox.north) {\sffamily\textbf{#1}};
\end{tikzpicture}
\end{center}
}

%%%%%% boitesimple %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\boitesimple}[1]{%
\begin{center}
\begin{minipage}{12cm}
\begin{shaded}
	#1
\end{shaded}
\end{minipage}
\end{center}
}
