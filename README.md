# A Template for EE 233 Report

## Usage

The document class `ee233report` is provided to typeset the report. It should be included as document class in the report.

## Unimplemented Features

These features are diffifcult to implement in the class but easy for users to set up.

### Two-Column Layout

The LaTex built-in `\twocolumn` is known to create a page break after the redefined `\maketitle`, while the two-column layout in the `multicol` package (included in the class) isn't. So the later is recommended:

```latex
% place multicols environment below \maketitle
\begin{multicols}{2}

% Your document body here

\end{multicols}
```

### Boxes around Figures

To add boxes to figures, the `figure` environment may be redefined, but it is impossible to make the redefined version identical to the original. It is recommended to use the `mdframed` package (also included in the class) to add the boxes:

```latex
\begin{figure}
    \begin{mdframed}
        % Your figure here
    \end{mdframed}
\end{figure}
```

### Table Styles

Again, redefinition of built-in environment is undesirable. There are many LaTex table generators out there in the wilds. To generate thicker horizontal lines, the included package `makecell` provides `\Xhline`:

```latex
\begin{tabular}{l|l}
    \Xhline{1.5pt}
    Activity & Student Name \\ \hline
    Prelab/Circuit Analysis &  \\ \hline
    Prelab/Simulations &  \\ \hline
    Prelab/answer questions &  \\ \hline
    Circuit construction &  \\ \hline
    Data collection &  \\ \hline
    Data analysis &  \\ \hline
    Lab report writing &  \\ \Xhline{1.5pt}
\end{tabular}
```
