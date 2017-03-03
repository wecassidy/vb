\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vb}

%% Load base (article)
\LoadClass[12pt,letterpaper]{article}

%% Margins
\RequirePackage[margin=2.54cm]{geometry}

%% Font
\renewcommand*\rmdefault{ptm} % Use times as serif font
\renewcommand{\familydefault}{\rmdefault} % Set default font to serif

%% Title page
\RequirePackage{etoolbox} % LaTeX programmy-ish tricks
\newcommand*{\labauthor}[2]{
  \listadd{\labauthorslist}{
    \textsc{#1}

    {\fontsize{9pt}{13.5pt}\selectfont\textit{#2}}

  }
}
\renewcommand*{\do}[1]{
  #1
}
\newcommand*{\@labauthors}{\dolistloop{\labauthorslist}}

\renewcommand*{\maketitle}{%
  {
    \centering
    {\fontsize{20pt}{30pt}\selectfont\@title} % 20pt

    \@labauthors

  }
}

%% 2 columns
\RequirePackage{multicol}
\setlength\columnsep{1.27cm}

%% Single space
\RequirePackage{setspace}
\singlespacing

%% Header
\RequirePackage{fancyhdr}
\pagestyle{fancy} % Show the header on every page
\renewcommand{\headrulewidth}{0pt} % No line between the header and text
\fancyhead[EC]{\textit{\@author et al}}
\fancyhead[OC]{\textit{\@title}}

% Page numbering
\fancyhead[EL]{\thepage}
\fancyhead[OR]{\thepage}


%% Graph styles
\RequirePackage{tikz,pgfplots,pgfplotstable}
\pgfplotsset{compat=newest}
\tikzset{vb_axis/.style={
    width=\linewidth,
    grid=major,
    tick style={draw=none}
  }}
\tikzset{vb_marks/.style={
    only marks,
    mark size=3pt,
    mark=o,
    draw=black,
    error bars/y dir=both, error bars/y explicit,
    error bars/x dir=both, error bars/x explicit,
    error bars/error bar style={color=black}
  }}

%% Abstract
\newenvironment{vb_abstract}{
  \begin{quotation}
    \fontsize{9pt}{13.5}\selectfont
  }{
  \end{quotation}
}

%% Equations
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\newtagform{brackets}{[}{]} % Wrap numbers in square brackets
\usetagform{brackets}

\newenvironment{vb_equation}[2]{
  \begin{equation}
  }{
  \end{equation}
  {\raggedright \textit{\fontsize{9pt}{13.5}\selectfont #1}}
  %{\fontsize{}}
}

\endinput