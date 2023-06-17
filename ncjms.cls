\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ncjms}[2014/12/12, v1.0]
%%%%%%%%%%%
%%%%%%%%%%%  load the appropriate class
\LoadClass[12pt, e-only, reqno]{amsart}
%%%%%%%%%%%
%%%%%%%%%%% load all necessary packages
\RequirePackage{fancyhdr}
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage[authoryear,round]{natbib}
\RequirePackage{amssymb}
\RequirePackage[mathlines]{lineno} %adds line numbers if needed
\RequirePackage{amsmath}
\RequirePackage{enumerate}
\RequirePackage{multicol}  
\RequirePackage{multirow}
\RequirePackage{hyperref}
\RequirePackage{booktabs}
\usepackage[margin=1in]{geometry}
\geometry{letterpaper}

\usepackage{type1cm}
\usepackage{eso-pic}
\usepackage{mathptmx}
\usepackage{fix-cm} % Allows for Computer Modern fonts of arbitrary sizes


%
%
%%%%%%%%%%%
%%%%%%%%%%% define all available options
\DeclareOption{draft}{\setlength\overfullrule{5pt}}  %allows to see long lines
\DeclareOption{noref}{ %if you do not want to see references
                        \hypersetup{colorlinks=true, linkcolor=black, anchorcolor=black, 
                        citecolor=black, menucolor=black, urlcolor=black}
}
\DeclareOption{final}{\setlength\overfullrule{0pt}}  %for final printing
\DeclareOption{editor}{% this option works for editors only. It loads a private file ncjmsed.tex that provides few 
%                        more options and a slightly different formatting for editors
% this few packages are used by editors only
    \input{ncjmsed.tex}
}
%%%%%%%%%%%
%%%%%%%%%%%
%
%        
%


\def\publname{North Carolina Journal of\newline
  Mathematics and Statistics}

%%%%% change the authors and title from all upper case
\newenvironment{nouppercase}{%
  \let\uppercase\relax%
  \renewcommand{\uppercasenonmath}[1]{}}{}

\let\Maketitle\maketitle
\renewcommand\maketitle{  
\begin{nouppercase}
\Maketitle
\end{nouppercase}
}

  

%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Define the heather and footer of the paper
%
\renewcommand{\headrulewidth}{0pt} %no line for the header
%
    \pagestyle{fancy} %this defines a a header and footer from page 2 on
    %       we want page numbers and authors and title running in the header
    \fancyhf{}% clears any traces of header and footer
    \fancyhead[LE,RO]{\thepage} %inserts the page
    \fancyhead[CE]{\small \textit{Use authorruning to put Author's header here}} %only a warning if authors do not include their
    \fancyhead[CO]{\small \textit{Use titlerunning to put Title's header here}}  %only a warning if authors do not include their
%    }
%
%      command for authors to enter their own header for authors and title 
\newcommand\authorsrunning[1]{\fancyhead[CE]{\small \textit{#1}}}
\newcommand\titlerunning[1]{\fancyhead[CO]{\small \textit{#1}}}


%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% Proper formatings of headings
%
%
\renewcommand*{\@seccntformat}[1]{%   %add a dot after the section heading
  \csname the#1\endcsname.~
}
% add appropriate spacing before and after the section, subsection and subsubsection headings
%
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                  %{\noindent \normalsize \hspace*{0.12in}}% 
                                  {3.0ex \@plus .1ex \@minus .2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\normalsize\bfseries}}
%                                   
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {2.75ex\@plus 1ex \@minus .2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
%                                     
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-2.75ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
%
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
%
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
%
% 
%
%

%make sure equations, tables and figures are numbered by (section.eq#)
\numberwithin{equation}{section}
\numberwithin{table}{section}
\numberwithin{figure}{section}

\heavyrulewidth=.12em %dimension of the heavy line for tables
\abovetopsep = 0.5em %separation from the top of the page to the caption



\ProcessOptions

