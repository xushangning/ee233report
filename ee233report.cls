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

\setlength{\columnsep}{2.16ex}

\renewcommand{\thesection}{\Roman{section}} 
\titleformat{\section}[block]{\small\filcenter}{\thesection. }{0pt}
    {\MakeUppercase}
% \titlespacing without "*" has the side effects of enable indentation for the
% paragraph that immediately follows the section heading
\titlespacing{\section}{0pt}{0.64cm}{0.21cm}

\setlength{\parindent}{0.33cm}

\linespread{0.95}

\makeatletter
\renewcommand{\maketitle}{
    \vspace*{0.64cm}
    \begin{center}
        {
            \fontsize{16pt}{0pt}\selectfont\@title
        }

        \vspace*{0.21cm}
        \@author

        \vspace*{0.21cm}
        EE233 Circuit Theory

        \vspace*{0.64cm}
        {
            \small DEPARTMENT OF ELECTRICAL ENGINEERING, UNIVERSITY OF WASHINGTON, SEATTLE, WA, 98195
        }
    \end{center}
    \vspace*{0.21cm}
}
\makeatother

\renewenvironment{abstract}{
    \noindent\bfseries\textit{Abstract} --- 
}
{
}
