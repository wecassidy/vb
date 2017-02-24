\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vb}

%% Load base (article)
\LoadClass[12pt,letterpaper]{article}

%% Margins
\RequirePackage[margin=2.54cm]{geometry}

%% Title page


%% 2 columns
\RequirePackage{multicol}

%% Header
\RequirePackage{fancyhdr}
\pagestyle{fancy}
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


\endinput