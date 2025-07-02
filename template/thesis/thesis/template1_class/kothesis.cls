\ProvidesClass{hfthesis}
\LoadClass[12pt,a4paper,oneside,onecolumn,fleqn,dvipdfmx]{jreport}
%
\usepackage{docmute}
\usepackage{geometry}
\geometry{left=25mm,right=25mm,top=30mm,bottom=30mm}
%
% thesis_ja
\typeout{%
YNU sotsuron / shuuron format Version 3.0 - Released Jan 31, 1991.}
\typeout{Modifying: Document Style `jreport'. <18 Dec 88>}
%=============================================================================
\renewcommand{\bf}{\bfseries}
%=============================================================================
% As jynuron.sty is always used as [12pt], that \@ptsize is fixed to 2.
%=============================================================================
% 
\def\@ptsize{2}
\@namedef{ds@11pt}{}
\@namedef{ds@12pt}{} 
%=============================================================================
\@options
%=============================================================================
\lineskip 1pt \normallineskip 1pt
\def\baselinestretch{1}
\renewcommand{\normalsize}{\fontsize{11pt}{13pt}\selectfont}
\renewcommand{\bf}{\bfseries}
\def\@normalsize{\@setsize\normalsize{15pt}\xiipt\@xiipt
\abovedisplayskip 12pt plus3pt minus7pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip 6.5pt plus3.5pt
minus3pt\let\@listi\@listI} 
\def\small{\@setsize\small{13.6pt}\xipt\@xipt
\abovedisplayskip 11pt plus3pt minus6pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip 6.5pt plus3.5pt
minus3pt
\def\@listi{\leftmargin\leftmargini \parsep 4.5pt plus 2pt minus 1pt
 \itemsep \parsep
 \topsep 9pt plus 3pt minus 5pt}}
\def\footnotesize{\@setsize\footnotesize{12pt}\xpt\@xpt
\abovedisplayskip 10pt plus2pt minus5pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip 6pt plus3pt minus3pt
\def\@listi{\leftmargin\leftmargini \topsep 6pt plus 2pt minus 2pt\parsep 3pt
plus 2pt minus 1pt
\itemsep \parsep}}
\def\scriptsize{\@setsize\scriptsize{9.5pt}\viiipt\@viiipt}
\def\tiny{\@setsize\tiny{7pt}\vipt\@vipt}
\def\large{\@setsize\large{21pt}\xivpt\@xivpt}
\def\Large{\@setsize\Large{25pt}\xviipt\@xviipt}
\def\LARGE{\@setsize\LARGE{28pt}\xxpt\@xxpt}
\def\huge{\@setsize\huge{33pt}\xxvpt\@xxvpt}
\let\Huge=\huge
\normalsize 
%=============================================================================
% Lengths
%       no need to specify to read [a4j.sty].
%       no \@twoside-d is assumed.
%       fix here to adjust printable-area.
%=============================================================================
% "a4j" document style option.
%-----------------------------------------------------------------------------
%\if@twoside \oddsidemargin 21pt \evensidemargin 59pt \marginparwidth 85pt
%\else \oddsidemargin 39.5pt \evensidemargin 39.5pt
%=============================================================================
% touch following 2 lines to adjust your characters in the paper.
%=============================================================================
\topmargin-17.2mm
\oddsidemargin 5.3mm \evensidemargin 5.3mm
 \marginparwidth 68pt 
%\fi
\marginparsep 10pt 
% \topmargin 27pt
%\headheight 12pt \headsep 25pt \footheight 12pt \footskip 30pt 
\headheight 12pt  \headsep 25pt  \footskip 30pt 
%\textheight 586.5pt \textwidth 372pt \columnsep 10pt \columnseprule 0pt 
%\normalbaselineskip7.833mm
\baselineskip7.833mm
%\baselineskip\normalbaselineskip % this is set for below line.
%\def\sronbaselineskip{\baselineskip7.833mm}
%%                   % this is defined for after \begin{document}.
\textheight 32\baselineskip
\textwidth 36zw     % 12pt x 36 char (Kanji)
\columnsep 10pt \columnseprule 0pt 
%\advance\textheight\topskip
\footnotesep 8.4pt 
\skip\footins 10.8pt plus 4pt minus 2pt 
\floatsep 14pt plus 2pt minus 4pt \textfloatsep 20pt plus 2pt minus 4pt
\intextsep 14pt plus 4pt minus 4pt  \dblfloatsep 14pt plus 2pt
%\intextsep 14pt plus 4pt minus 4pt \@maxsep 20pt \dblfloatsep 14pt plus 2pt
minus 4pt \dbltextfloatsep 20pt plus 2pt minus 4pt 
\@fptop 0pt plus 1fil \@fpsep 10pt plus 2fil \@fpbot 0pt plus 1fil 
\@dblfptop 0pt plus 1fil \@dblfpsep 10pt plus 2fil \@dblfpbot 0pt plus 1fil
\marginparpush 7pt 
\parskip 0pt plus 1pt
%============
% \parindent 1.5em
\parindent 1zw
%============
\partopsep 3pt plus 2pt minus 2pt 
\@lowpenalty 51 \@medpenalty 151 \@highpenalty 301 
\@beginparpenalty -\@lowpenalty \@endparpenalty -\@lowpenalty \@itempenalty
-\@lowpenalty 
\def\@makechapterhead#1{ \vspace*{50pt} { \parindent 0pt \raggedright 
 \ifnum \c@secnumdepth >\m@ne \huge\bf
 \@chapapp{} \thechapter{} \@chapappii{}\par 
 \vskip 20pt \fi \Huge \bf #1\par 
 \nobreak \vskip 40pt } }
\def\@makeschapterhead#1{ \vspace*{50pt} { \parindent 0pt \raggedright 
 \Huge \bf #1\par 
 \nobreak \vskip 40pt } }
%=============================================================================
% The following are defined to;
%       o Avoid \thispagestyle{plain}.
%       o Avoid \addvspace on lof / lot.
%---------
\newcounter{figno}
\newcounter{tabno}
\renewcommand{\thetable}{\@arabic\c@table}
\renewcommand{\thefigure}{\@arabic\c@figure}
\def\chapter{\clearpage \thispagestyle{sron} \global\@topnum\z@
\setcounter{figno}{\thefigure}
\setcounter{tabno}{\thetable}
\@afterindenttrue \secdef\@chapter\@schapter
} 
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
 \refstepcounter{chapter}
 \setcounter{figure}{\thefigno}
 \setcounter{table}{\thetabno}
 \typeout{\@chapapp\space\thechapter\space\@chapappii.}
%% \addcontentsline{toc}{chapter}{\protect
%% \numberline{\thechapter}#1}\else
 \addcontentsline{toc}{chapter}{\protect
 {\thechapter}\space#1}\else
 \addcontentsline{toc}{chapter}{#1}\fi
 \chaptermark{#1}
 \if@twocolumn
 \@topnewpage[\@makechapterhead{#2}]
 \else \@makechapterhead{#2}
 \@afterheading \fi}
%---------
%\def\chapter{\clearpage \thispagestyle{plain} \global\@topnum\z@
%\@afterindenttrue \secdef\@chapter\@schapter} 
%\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
% \refstepcounter{chapter}
% \typeout{\@chapapp\space\thechapter\space\@chapappii.}
% \addcontentsline{toc}{chapter}{\protect
% \numberline{\thechapter}#1}\else
% \addcontentsline{toc}{chapter}{#1}\fi
% \chaptermark{#1}
% \addtocontents{lof}{\protect\addvspace{10pt}}
%\addtocontents{lot}{\protect\addvspace{10pt}} \if@twocolumn
%\@topnewpage[\@makechapterhead{#2}] 
% \else \@makechapterhead{#2}
% \@afterheading \fi} 
%---------
\def\@schapter#1{\if@twocolumn \@topnewpage[\@makeschapterhead{#1}]
 \else \@makeschapterhead{#1} 
 \@afterheading\fi}
%=============================================================================
\def\section{\@startsection {section}{1}{\z@}{3.5ex plus 1ex minus 
 .2ex}{2.3ex plus .2ex}{\Large\bf}}
\def\subsection{\@startsection{subsection}{2}{\z@}{3.25ex plus 1ex minus 
 .2ex}{1.5ex plus .2ex}{\large\bf}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{3.25ex plus 
 1ex minus .2ex}{1.5ex plus .2ex}{\normalsize\bf}}
\def\paragraph{\@startsection
 {paragraph}{4}{\z@}{3.25ex plus 1ex minus .2ex}{-1em}{\normalsize\bf}}
\def\subparagraph{\@startsection
 {subparagraph}{4}{\parindent}{3.25ex plus 1ex minus 
 .2ex}{-1em}{\normalsize\bf}}
\def\chaptermark#1{}
\setcounter{secnumdepth}{2}
\def\appendix{\par
 \setcounter{chapter}{0}
 \setcounter{section}{0}
 \def\@chapapp{\UTF{0095}t\UTF{0098}^}
 \def\@chapappii{}
 \def\thechapter{\Alph{chapter}}}
\leftmargini 2.5em
\leftmarginii 2.2em \leftmarginiii 1.87em \leftmarginiv 1.7em \leftmarginv 1em
\leftmarginvi 1em
\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep
\labelsep .5em
\def\@listI{\leftmargin\leftmargini \parsep 5pt plus 2.5pt minus 1pt\topsep
10pt plus 4pt minus 6pt\itemsep 5pt plus 2.5pt minus 1pt}
\let\@listi\@listI
\@listi 
\def\@listii{\leftmargin\leftmarginii
 \labelwidth\leftmarginii\advance\labelwidth-\labelsep
 \topsep 5pt plus 2.5pt minus 1pt
 \parsep 2.5pt plus 1pt minus 1pt
 \itemsep \parsep}
\def\@listiii{\leftmargin\leftmarginiii
 \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
 \topsep 2.5pt plus 1pt minus 1pt 
 \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
 \itemsep \topsep}
\def\@listiv{\leftmargin\leftmarginiv
 \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
\def\@listv{\leftmargin\leftmarginv
 \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
\def\@listvi{\leftmargin\leftmarginvi
 \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}
%
%=============================================================================
% I don't touch any \baselineskip-s in jlfont2.sty.
% Changing the following line affects whole document.
%=============================================================================
\def\baselinestretch{1.4}
%======================
%\def\@chapapp{Chapter}
\def\@chapapp{第}
\def\@chapappii{章}
%======================
\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{2}
\def\tableofcontents{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{目 次\@mkboth{目 次}{目 次}}
 \@starttoc{toc}\if@restonecol\twocolumn\fi}
\def\l@part#1#2{\addpenalty{-\@highpenalty}
 \addvspace{2.25em plus 1pt} \begingroup
 \@tempdima 3em \parindent \z@ \rightskip \@pnumwidth \parfillskip
-\@pnumwidth 
 {\large \bf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
 \nobreak \endgroup}
\def\l@chapter#1#2{\pagebreak[3] 
 \vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
 \parindent \z@ \rightskip \@pnumwidth 
 \parfillskip -\@pnumwidth 
 \bf \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip #1\nobreak\hfil
\nobreak\hbox to\@pnumwidth{\hss #2}\par
 \endgroup}
\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\def\listoffigures{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{図 目 次\@mkboth
 {図 目 次}{図 目 次}}\@starttoc{lof}\if@restonecol\twocolumn
 \fi}
\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\def\listoftables{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{表 目 次\@mkboth
 {表 目 次}{表 目 次}}\@starttoc{lot}\if@restonecol
 \twocolumn\fi}
\let\l@table\l@figure
%=============================================================================
% thebibliography
%       (modifying jreport.sty
%        from jarticle.sty)
%-----------------
\def\thebibliography#1{
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{参考文献}
\chapter*{参考文献\markboth
 {参 考 文 献}{参 考 文 献}}\list
 {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist
%\def\thebibliography#1{\chapter*{Bibliography\@mkboth
% {関 連 書 籍}{関 連 書 籍}}\list
% {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
% \advance\leftmargin\labelsep
% \usecounter{enumi}}
% \def\newblock{\hskip .11em plus .33em minus .07em}
% \sloppy
% \sfcode`\.=1000\relax}
%\let\endthebibliography=\endlist
%=============================================================================
\newif\if@restonecol
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35pt\twocolumn[\@makeschapterhead{索 引}]
% \@mkboth{索 引}{索 引}\thispagestyle{plain}\parindent\z@
 \@mkboth{索 引}{索 引}\thispagestyle{sron}\parindent\z@
 \parskip\z@ plus .3pt\relax\let\item\@idxitem}
\def\@idxitem{\par\hangindent 40pt}
\def\subitem{\par\hangindent 40pt \hspace*{20pt}}
\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}
\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}
\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}

\def\footnoterule{\kern-3\p@ 
 \hrule width .4\columnwidth 
 \kern 2.6\p@} 
\@addtoreset{footnote}{chapter} 
\long\def\@makefntext#1{\parindent 1em\noindent 
 \hbox to 1.8em{\hss$^{\@thefnmark}$}#1}
\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}
\long\def\@makecaption#1#2{
 \vskip 10pt 
 \setbox\@tempboxa\hbox{#1: #2}
 \ifdim \wd\@tempboxa >\hsize \unhbox\@tempboxa\par \else \hbox
to\hsize{\hfil\box\@tempboxa\hfil} 
 \fi}
%=============================================================================
% titlepage from:
%-----------------------------------------------------------------------------
% titlepage.sty  27 Jan 85
\def\maketitle{{
\def\baselinestretch{1}
\begin{titlepage}
  \let\footnotesize\small \let\footnoterule\relax \setcounter{page}{0}
  \null
  \vfil
  \vskip 60pt
  \begin{center}
    {\large\@affiliation \par} \vskip 2em
    {\LARGE\@thesisyear 年度 \@thesistype \par} \vskip 3em
    {\LARGE\@title \par} \vskip 6em
    {\large \lineskip .75em
    \vskip 6em
    %指導教員の記述
    \ifnum\profcount = 2
    	{\large 指導教員\\ 
    	\@professor \ \@honorific \par
    	\@secondprofessor \ \@secondhonorific \par}
    \else
    	{\large 指導教員\\ 
    	\vskip 1em 
    	\@professor \ \@honorific \par}
    \fi
    \vskip 3em
    {\large \@date \par}
    \vskip 3em
    \begin{tabular}[t]{c}
      {\Large \@author}
    \end{tabular}\par}
  \end{center}
  \par
  \@thanks
  \vfil
  \null
  \end{titlepage}
  \setcounter{footnote}{0} \let\thanks\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax}}
\def\jabstract{\titlepage
  \null
% \vfil
% \begin{center}
  \noindent{\large\bf あらまし\par}
% \end{center}
\hombun
}
\def\endjabstract{\par\vfil\null\endtitlepage}
\def\abstract{\titlepage
  \null
% \vfil
% \begin{center}
  \noindent{\large\bf Abstract\par}
% \end{center}
}
\def\endabstract{\par\vfil\null\endtitlepage}
%
%指導教員は2人まで指定出来る仕様です
\newcount\profcount
\profcount = 0
\def\professor#1#2{
	\ifnum\profcount = 0
		\gdef\@professor{#1} \gdef\@honorific{#2}
	\else
		\gdef\@secondprofessor{#1} \gdef\@secondhonorific{#2}
	\fi
	\advance\profcount by 1
}
%
\def\affiliation#1{\gdef\@affiliation{#1}}
\def\thesistype#1#2{\gdef\@thesisyear{#1} \gdef\@thesistype{#2}}
\def\author#1#2{\gdef\@author{#1 \ #2}}
%-----------------------------------------------------------------------------
%\input titlepage.sty
%=============================================================================

\mark{{}{}} 

\newif\if西暦\let\if西暦=\iffalse \def\西暦{\let\if西暦=\iftrue}
\def\today{{\if西暦\count0=\year\else%
\count0=\year\advance\count0 -1988 平成\,\fi%
\ifnum\count0=1 元\else\number\count0\fi\,年\hspace{.5em}\nobreak%
\number\month\,月\hspace{.5em}\nobreak\number\day\,日}}
\@addtoreset{equation}{chapter} 
%-----------------------------------------------------------------------------
% equation style
%
%\def\theequation{\thechapter.\arabic{equation}}
%
\def\theequation{\mbox{\rm \thechapter -\arabic{equation}}}

\def\ps@sron{\let\@mkboth\@gobbletwo
     \def\@oddhead{}\def\@oddfoot{\rm \hfil -- \thepage \ --
         \hfil}\def\@evenhead{}\let\@evenfoot\@oddfoot}
%===================
\if@twoside \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@evenhead{\rm \thepage\hfil \sl
\leftmark}\def\@oddhead{\hbox{}\sl \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markboth {\uppercase{\ifnum \c@secnumdepth
>\m@ne
 \@chapapp\ \thechapter \ \@chapappii. \ \fi ##1}}{}}
 \def\sectionmark##1{\markright
{\uppercase{\ifnum \c@secnumdepth >\z@
 \thesection. \ \fi ##1}}}}
\else \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@oddhead{\hbox {}\sl \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markright {\uppercase{\ifnum \c@secnumdepth
>\m@ne
 \@chapapp\ \thechapter \ \@chapappii. \ \fi ##1}}}}
\fi
\def\ps@myheadings{\let\@mkboth\@gobbletwo
\def\@oddhead{\hbox{}\sl\rightmark \hfil
\rm\thepage}\def\@oddfoot{}\def\@evenhead{\rm \thepage\hfil\sl\leftmark\hbox
{}}\def\@evenfoot{}\def\chaptermark##1{}%
\def\sectionmark##1{}\def\subsectionmark##1{}}

%
%\ps@plain \pagenumbering{arabic} \onecolumn \if@twoside\else\raggedbottom\fi 
%\pagenumbering{sron} \onecolumn \if@twoside\else\raggedbottom\fi 
\ps@sron \pagenumbering{arabic} \onecolumn \if@twoside\else\raggedbottom\fi 
\pagestyle{sron}

%\input{usexpic}
\def\includeabstract#1{\thispagestyle{empty} \include{#1}\hombun}
\def\makemokuji{\maetsuke\tableofcontents\listoffigures\listoftables\hombun}
\def\maetsuke{\newpage\pagestyle{sron}\pagenumbering{roman}\setcounter{page}{1}}
\def\hombun{\newpage\pagestyle{sron}\pagenumbering{arabic}\setcounter{page}{1}}
\def\includeacknowledgments#1{\newpage\phantomsection\addcontentsline{toc}{chapter}{謝辞}\include{#1}}
\def\includeappendix#1{\newpage\phantomsection\addcontentsline{toc}{chapter}{付録}\include{#1}}
\def\gakkai{\newpage\phantomsection\addcontentsline{toc}{chapter}{発表文献}}
\def\bunken{\newpage\phantomsection\addcontentsline{toc}{chapter}{参考文献}}
\def\includepublication#1{\newpage\phantomsection\addcontentsline{toc}{chapter}{発表文献}\include{#1}}

%=============================================================================
% thebibliography
%       (modifying jreport.sty
%        from jarticle.sty)
%-----------------
%\newcounter {part}
%\newcounter {chapter}
%\newcounter {section}[chapter]
%\newcounter {subsection}[section]
%\newcounter {subsubsection}[subsection]
%\newcounter {paragraph}[subsubsection]
%\newcounter {subparagraph}[paragraph]

\def\thepart {\Roman{part}}
\def\thechapter {\arabic{chapter}}
\def\thesection {\thechapter.\arabic{section}}
\def\thesubsection {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\def\theparagraph {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}
%======================