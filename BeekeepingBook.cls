%% 
% Class Identification
%%
\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{beekeepingbook}
              [2018/05/01 v1.0 BeekeepingBook]

%% 
% No options.  This class is based on the book.cls
% and the options are loaded at this point.
%%
\LoadClass[12pt, a4paper, twoside, british]{book}

%% 
% Packages
%%
\RequirePackage[margin=2.8cm]{geometry} % Easier control over the margins
\RequirePackage[utf8]{inputenc}
\RequirePackage[british]{babel}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage{datetime2}
\RequirePackage{float}
\RequirePackage{multirow}
\RequirePackage{bigdelim}
\RequirePackage{xcolor}
\RequirePackage[labelformat=empty]{caption}

%% 
% Set the font and adjust a few sizes
%%

\renewcommand{\familydefault}{\sfdefault}
\newcommand{\smaller}{\small}
\raggedright 

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
% Apiary
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
