%% 
% Class Identification
%%
\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{./BeekeepingBook}
              [2018/05/01 v1.0 BeekeepingBook]

%% 
% No options.  This class is based on the book.cls
% and the options are loaded at this point.
%%
\LoadClass[12pt, a4paper, twoside, british]{article}

%% 
% Packages
%%
\RequirePackage{fullpage} % for 1.5 cm margins
\RequirePackage{abstract}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[british]{isodate}
\RequirePackage{float}
\RequirePackage{multirow}
\RequirePackage{bigdelim}
\RequirePackage{parskip}
\RequirePackage{xcolor}
\RequirePackage[labelformat=empty]{caption}
\RequirePackage[bottom]{footmisc}
\RequirePackage{array} % for the counter in the tables

%% 
% Set the font and adjust a few sizes
%%
\renewcommand{\abstractname}{Overview}
\renewcommand{\familydefault}{\sfdefault} % so it doesn't look like LaTeX
\newcommand{\smaller}{\small}
\raggedright 
\raggedbottom


\tikzset{
    stand/.pic={code={
        \draw[thick] (0,1) -- (0,2) -- (3,2) -- (3,1) -- (2.75,1) -- (2.75,0) -- 
        (2.5,0) -- (2.5,0) -- (2.5,1) -- (0.5,1) -- (0.5,0) -- (0.25,0) -- (0.25,1) -- cycle;}
    }
}

\tikzset{
    brood/.pic={code={
        \draw[thick] (0,0) rectangle (3,2);
        \node at (1.5,1) {#1};}
    }
}
\tikzset{
    super/.pic={code={
        \draw[thick] (0,0) rectangle (3,1.5);
        \node at (1.5,0.75) {#1};}
    }
}
\tikzset{
    roof/.pic={code={
        \draw[thick] (-.25,0) rectangle (3.25,1);
        \node at (1.5,0.5) {#1};}
    }
}

%% 
% Apiary Diagram
%%
\newcommand{\temporaryCaption}{}% register to store caption
\newenvironment{apiary}[1]%
{%
	\begin{figure}[H]%
	\renewcommand{\temporaryCaption}{#1}% stash the caption so it can be used in the end section
    \begin{tikzpicture}[x=5mm,y=5mm]%
    \draw[ultra thick] (-1,0) -- (28,0);%
}%
{%
    \end{tikzpicture}%
	\caption{\temporaryCaption}%
	\end{figure}%
}%

