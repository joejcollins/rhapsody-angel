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
\LoadClass[12pt, a4paper, twoside, british]{article}

%% 
% Packages
%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[british]{babel}
\RequirePackage{tikz}
\RequirePackage{datetime2}

%% 
% Set the font and adjust a few sizes
%%
\renewcommand{\familydefault}{cmss}
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
      %  \draw[thick] (0,0) -- (0,2) -- (3,2) -- (3,0) -- cycle;
        \draw[thick] (0,0) rectangle (3,2);
        \node at (1.5,1) {#1};}
    }
}
\tikzset{
    super/.pic={code={
       % \draw[thick] (0,0) -- (0,1.5) -- (3,1.5) -- (3,0) -- cycle;
        \draw[thick] (0,0) rectangle (3,1.5);
        \node at (1.5,0.75) {#1};}
    }
}
\tikzset{
    roof/.pic={code={
        % \draw[thick] (-.25,0) -- (-.25,1) -- (3.25,1) -- (3.25,0) -- cycle;
        \draw[thick] (-.25,0) rectangle (3.25,1);
        \node at (1.5,0.5) {#1};}
    }
}