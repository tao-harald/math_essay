% Author: Tao Harald

% --- Class structure: identification part
\ProvidesClass{homework}[2020/10/12 Homework class]
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{calc}

\DeclareDefaultOption{
  \PassOptionsToClass{\CurrentOption}{article}
 }
\ProcessKeyvalOptions*\relax

\LoadClass{article}


\RequirePackage[margin=1in]{geometry}
\RequirePackage{hyperref}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,mathtools,thmtools}
% \RequirePackage{kpfonts}
\RequirePackage{tikz}
\RequirePackage{xparse}
\RequirePackage{sectsty}
\RequirePackage[shortlabels,inline]{enumitem}
\RequirePackage{iftex}
\RequirePackage{mathtools}
\RequirePackage{aligned-overset}

\allowdisplaybreaks

% \colorlet{maincolor}{green!50!black}
% \colorlet{secondcolor}{cyan!70!black}
\colorlet{maincolor}{black}
\colorlet{secondcolor}{black}

\newcommand*{\QEDB}{\null\nobreak \ensuremath{\qquad \square}}

\declaretheoremstyle[
  headfont=\color{maincolor}\normalfont\bfseries,
]{plain}

\declaretheoremstyle[
  headfont=\color{maincolor}\normalfont\bfseries,
]{definition}

\declaretheoremstyle[
  headfont=\color{maincolor}\normalfont\bfseries,
]{remark}

\theoremstyle{plain}% default
\newtheorem{theorem}{Theorem}[section] %
\newtheorem{lemma}[theorem]{Lemma} %
\newtheorem{proposition}[theorem]{Proposition} %
\newtheorem{corollary}[theorem]{Corollary} %
\theoremstyle{definition} %
\newtheorem{definition}[theorem]{Definition} %
\newtheorem{conjecture}[theorem]{Conjecture} %
\theoremstyle{remark} %
\newtheorem{example}[theorem]{Example} %
\newtheorem*{remark}{Remark} %
\newtheorem{note}[theorem]{Note} %
\newtheorem{case}[theorem]{Case} %
\newtheorem*{solution}{Solution} %

\renewcommand*{\proofname}{%
\normalfont\bfseries\color{secondcolor} Proof}

\setlist[enumerate,1]{label=\color{maincolor}\arabic*.}
\setlist[enumerate,2]{label=\color{maincolor}(\alph*).}
\setlist[enumerate,3]{label=\color{maincolor}\Roman*.}
\setlist[enumerate,4]{label=\color{maincolor}\Alph*.}

\hypersetup{
    colorlinks=true,   
    urlcolor=maincolor,
}
\sectionfont{\color{maincolor}}

\newtoks\institute
\newtoks\email

\def\IfEmpty#1{%
  \edef\1{\the#1}
  \ifx\1\empty}

\def\maketitle{%
  \begin{center}%
    \let \footnote \thanks{%
      \color{maincolor} \LARGE\bfseries \@title \par}%
    \vskip 1em
    \@author
    \IfEmpty\email
    \else 
    {\\ \href{mailto:\the\email}{\the\email} }
    \fi
    \IfEmpty\institute
    \else 
    {\\ \the\institute }
    \fi
  \end{center}%
  \par}