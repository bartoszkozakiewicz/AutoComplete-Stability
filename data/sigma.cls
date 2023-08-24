% Document class file for on-line journal SIGMA
% ``Symmetry, Integrability and Geometry: Methods and Applications''
% Document history:
%    Version 1.0: 2005-04-01 Vyacheslav Boyko & Roman Popovych
%    Version 1.1: 2005-07-26 Vyacheslav Boyko & Roman Popovych
%    Version 1.2: 2005-12-28 Vyacheslav Boyko & Roman Popovych
%    Version 2.0: 2006-09-21 Vyacheslav Boyko & Roman Popovych
%    Version 3.0: 2006-12-31 Vyacheslav Boyko & Roman Popovych
%    Version 4.0: 2008-12-31 Vyacheslav Boyko & Roman Popovych
% Known problems:
%     None

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sigma}[2008/12/31
v4.0 Document class for ``Symmetry, Integrability and Geometry: Methods and Applications'']
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[fleqn,11pt,twoside]{article}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{amscd}
\RequirePackage{epsfig}
\RequirePackage{graphics}
\RequirePackage{ifthen}
\RequirePackage{varioref}
\usepackage{color}
\definecolor{darkgreen}{rgb}{0.0625,0.64,0.0625}
\ifpdf
  \usepackage[
    pdftex,
    colorlinks,%
    linkcolor=blue,citecolor=red,urlcolor=blue,
    hyperindex,%
    plainpages=false,%
    bookmarksopen,%
    bookmarksnumbered%
  ]{hyperref}
  %%?? \def\pdfBorderAttrs{/Border [0 0 0] } % No border arround Links
%  \usepackage{thumbpdf}
\else
  \usepackage{hyperref}
\fi

%\let\WriteBookmarks\relax
%\let\WriteBookmarksnumbered\relax
%\let\WritePdfpagelabels\relax
%\let\pageref\HyPsd@pageref

% Beginning initialization

\newcommand{\ArticleLabel}{Article label}
\newcommand{\evenhead}{Author \ name}
\newcommand{\oddhead}{Article \ name}
\newcommand{\theArticleName}{Article name}
\newcommand{\Volume}{{\bf 7}}
\newcommand{\Paper}{Paper}
\newcommand{\PaperNumber}{1}
\newcommand{\PublicationYear}{2011}



% Titlepage

\newcommand{\FirstPageHeading}[1]{\thispagestyle{empty}%
\noindent\raisebox{24pt}[0pt][0pt]{\makebox[\textwidth]{\protect\footnotesize \sf 
Symmetry, Integrability and Geometry: Methods and Applications
\hfill  SIGMA \Volume \ (\PublicationYear), \PaperNumber, 
\pageref*{\ArticleLabel-lp} pages}}\par}

\newcommand{\LastPageEnding}{\label{\ArticleLabel-lp}\newpage}

\newcommand{\ArticleName}[1]{\renewcommand{\theArticleName}{#1}\vspace{-7mm}\par\noindent {\LARGE\bf  #1\par}}
\newcommand{\Author}[1]{\vspace{5mm}\par\noindent {\it #1} \par\vspace{2mm}\par}
\newcommand{\Address}[1]{\vspace{2mm}\par\noindent {\it #1} \par}
\newcommand{\Email}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {\rm E-mail: }{\it  #1} \par}}
\newcommand{\EmailMarked}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent $^*$~{\rm E-mail: }{\it  #1} \par}}
\newcommand{\URLaddress}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {\rm URL: }{\tt  #1} \par}}
\newcommand{\URLaddressMarked}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent $^*$~{\rm URL: }{\tt  #1} \par}}
\newcommand{\EmailD}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {$\phantom{\dag}$~\rm E-mail: }{\it  #1} \par}}
\newcommand{\EmailDD}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {$\phantom{{}^{\dag^1}}$~\rm E-mail: }{\it  #1} \par}}
\newcommand{\URLaddressD}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {$\phantom{\dag}$~\rm URL: }{\tt  #1} \par}}
\newcommand{\URLaddressDD}[1]{\ifthenelse{\equal{#1}{}}{}{\par\noindent {$\phantom{\dag^1}$~\rm URL: }{\tt  #1} \par}}
\newcommand{\ArticleDates}[1]{\vspace{2mm}\par\noindent {\small {\rm #1} \par
\noindent %{\rm Original article is available at}
{\href{http://dx.doi.org/10.3842/SIGMA.\PublicationYear.\PaperNumber}{doi:10.3842/SIGMA.\PublicationYear.\PaperNumber}
}} \par}
\newcommand{\Abstract}[1]{\vspace{6mm}\par\noindent\hspace*{10mm}
\parbox{140mm}{\small {\bf Abstract.} #1}\par}

\newcommand{\Keywords}[1]{\vspace{3mm}\par\noindent\hspace*{10mm}
\parbox{140mm}{\small {\it Key words:} \rm #1}\par}
\newcommand{\Classification}[1]{\vspace{3mm}\par\noindent\hspace*{10mm}
\parbox{140mm}{\small {\it 2010 Mathematics Subject Classification:} \rm #1}\vspace{3mm}\par}

\newcommand{\ShortArticleName}[1]{\renewcommand{\oddhead}{#1}}
\newcommand{\AuthorNameForHeading}[1]{\renewcommand{\evenhead}{#1}}

% Set head and foot

\renewcommand{\@evenhead}{
\hspace*{-3pt}\raisebox{-15pt}[\headheight][0pt]{\vbox{\hbox to \textwidth
{\thepage \hfil \evenhead}\vskip4pt \hrule}}}
\renewcommand{\@oddhead}{
\hspace*{-3pt}\raisebox{-15pt}[\headheight][0pt]{\vbox{\hbox to \textwidth
{\oddhead \hfil \thepage}\vskip4pt\hrule}}}
\renewcommand{\@evenfoot}{}
\renewcommand{\@oddfoot}{}
%\renewcommand{\@evenfoot}{\footnotesize \sf \supplementTitle \hfil}
%\renewcommand{\@oddfoot}{\hfil \footnotesize \sf \supplementTitle}


% Papersize

\setlength{\textwidth}{160.0mm}
\setlength{\textheight}{240.0mm}
\setlength{\oddsidemargin}{5mm}
\setlength{\evensidemargin}{5mm}
\setlength{\topmargin}{-18mm}
\setlength{\parindent}{5.0mm}

% This makes the Figure/Table text a little smaller and makes the
% number boldface.

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small \textbf{#1.}\ \ #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\small \textbf{#1.}\ \ #2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


% Defines the \numberwithin command from AMS-LaTeX
%
\def\numberwithin#1#2{\@ifundefined{c@#1}{\@nocounterr{#1}}{%
  \@ifundefined{c@#2}{\@nocnterr{#2}}{%
  \@addtoreset{#1}{#2}%
  \toks@\@xp\@xp\@xp{\csname the#1\endcsname}%
  \@xp\xdef\csname the#1\endcsname
    {\@xp\@nx\csname the#2\endcsname
     .\the\toks@}}}}

% Proof should be boldface
%
\renewenvironment{proof}[1][\proofname]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep\textbf{%
    #1}\@addpunct{\bf .}]\ignorespaces
}{%
  \qed\endtrivlist
}
\renewcommand{\qedsymbol}{$\blacksquare$}


% Theorem-like environment
%
\newtheorem{theorem}{Theorem}
\newtheorem*{theorem*}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem*{corollary*}{Corollary}
\newtheorem{proposition}{Proposition}
\newtheorem*{proposition*}{Proposition}
\newtheorem{conjecture}{Conjecture}
\newtheorem*{conjecture*}{Conjecture}
{\theoremstyle{definition} \newtheorem{definition}{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem{example}{Example}
\newtheorem*{example*}{Example}
\newtheorem{remark}{Remark}
\newtheorem*{remark*}{Remark}
\newtheorem{note}{Note}
\newtheorem*{note*}{Note}
}

% Vertical space in tables
\def\tsep#1{%
  {\@tempdima=\ht\strutbox\advance\@tempdima #1
   \vrule height \@tempdima depth 0pt width 0pt\nobreak\hspace{0pt}%
  }%
}
\def\bsep#1{%
  {\@tempdima=\dp\strutbox \advance\@tempdima #1
   \nobreak\hspace{0pt}\vrule height 0pt depth \@tempdima width 0pt
  }%
}



\endinput
