\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vb}

% Load base (article)
\LoadClass[12pt,letterpaper]{article}

% Margins
\RequirePackage[margin=2.54cm]{geometry}

% 2 columns
\RequirePackage{multicol}
\AtBeginDocument{%
  \maketitle
  \begin{multicol}{2}
}

\AtEndDocument{%
  \end{multicol}
}


\endinput