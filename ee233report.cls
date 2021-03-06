\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ee233report}[2018/08/01 A Class for EE 233 Report]

\LoadClass[11pt, letter]{article}

\usepackage{fontspec}
\setmainfont[Ligatures=TeX]{Times New Roman}

\usepackage{blindtext}
\usepackage[margin=1in]{geometry}
\usepackage{titlesec}
\usepackage{graphicx}
\usepackage{multicol}
\usepackage{float}
\usepackage{mdframed}
% Select a language with no hyphenation to disable hyphenation
\RequirePackage[none]{hyphenat}
\RequirePackage{makecell}
\RequirePackage{enumitem}

\setlength{\columnsep}{2.16ex}

\renewcommand{\thesection}{\Roman{section}} 
\titleformat{\section}[block]{\small\filcenter}{\thesection. }{0pt}
    {\MakeUppercase}
% \titlespacing without "*" has the side effects of enable indentation for the
% paragraph that immediately follows the section heading
\titlespacing{\section}{0pt}{0.64cm}{0.21cm}

\setlength{\parindent}{0.32cm}

\linespread{0.95}

\setlist{nosep}

\renewcommand{\maketitle}{
    \begin{center}
        \vspace*{6pt}
        {
            \fontsize{16pt}{0pt}\selectfont\@title
        }

        \vspace*{6pt}
        \@author

        \vspace*{6pt}
        EE233 Circuit Theory
        \vspace*{6pt}

        \vspace*{8pt}
        {
            \small DEPARTMENT OF ELECTRICAL ENGINEERING, UNIVERSITY OF WASHINGTON, SEATTLE, WA, 98195
        }
    \end{center}
    \vspace*{6pt}
}

\renewenvironment{abstract}{
    \noindent\bfseries\textit{Abstract} --- 
}
{
}
