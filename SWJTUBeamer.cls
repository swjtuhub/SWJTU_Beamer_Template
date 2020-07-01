%--------------------------------------------------------
% NOTE: This is an UNOFFICIAL LaTeX beamer style for 
%       SouthWest Jiaotong University.
%--------------------------------------------------------
\ProvidesClass{SWJTUBeamer}%The name of the class
\NeedsTeXFormat{LaTeX2e} 
\LoadClass{beamer}
%--------------------------------------------------------
% Require tikz to do some text positioning
%--------------------------------------------------------
\usepackage{tikz}
%--------------------------------------------------------
% Use Helvetica rather than Computer Modern Sans Serif
% Comment this out if you prefer Computer Modern
%\usepackage{times}
%--------------------------------------------------------
%\usepackage{helvet}
%--------------------------------------------------------
% If you wish to use Arial, and have the winfonts package
% correctly installed uncomment the following to make the
% default sans serif font Arial
%--------------------------------------------------------
%\usepackage{winfonts}
%\usepackage[T1]{fontenc}
%\renewcommand{\sfdefault}{cmr}
%--------------------------------------------------------
\usepackage{comment}
%--------------------------------------------------------
%Some packages
\usepackage{ctex}
%\usepackage{inputenc}
\usepackage{fontspec}
\usepackage{comment}
\usepackage{indentfirst}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage{bm}
\usepackage{url}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{booktabs} 
\usepackage[algo2e,ruled,vlined]{algorithm2e}
\usepackage{array} 
\usepackage{verbatim} % adds environment for commenting out blocks of text & for better verbatim
\usepackage{subfigure} % make it possible to include more than one captioned figure/table in a single float
% These packages are all incorporated in the memoir class to one degree or another...
\usepackage{cases} %equation set
\usepackage{multirow} %use table
\usepackage{enumerate}
\usepackage{algorithm}
\usepackage{algorithmic}
\usepackage{xcolor}
\usepackage{listings}
\usepackage[utf8]{inputenc}
\usepackage[TS1,T1]{fontenc}
\usepackage{xcolor}%[x11names]
\usepackage{colortbl}
\usepackage{caption}
\usepackage{pgf}
\usepackage{tikz}

%--------------------------------------------------------
%Some settings
\setCJKmainfont{FandolSong}
\usefonttheme{serif}
\graphicspath{{image/}} 
\hypersetup{CJKbookmarks=true}
\setcounter{tocdepth}{1}
\lstset{tabsize=4, keepspaces=true,
    xleftmargin=2em,xrightmargin=0em, aboveskip=1em,
    backgroundcolor=\color{gray!20},  % Definition of the background colour
    frame=none,                       % No Frame
    extendedchars=false,              
    numberstyle=\ttfamily,
    basicstyle=\ttfamily,
    keywordstyle=\color{blue}\bfseries,
    breakindent=10pt,
    identifierstyle=,                 % nothing happens
    commentstyle=\color{green}\small,  % setting of the comment
    morecomment=[l][\color{green}]{\#},
    numbers=left,stepnumber=1,numberstyle=\scriptsize,
    showstringspaces=false,
    showspaces=false,
    flexiblecolumns=true,
    breaklines=true, breakautoindent=true,breakindent=4em,
    escapeinside={/*@}{@*/},
}

\renewcommand{\contentsname}{Contents}
\renewcommand{\abstractname}{Abstract}
\renewcommand{\refname}{Bibliography}
\renewcommand{\indexname}{Index}
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}
\renewcommand{\appendixname}{Appendix}
\renewcommand{\proofname}{Proof}
\renewcommand{\algorithm}{Algorithm}
\newcommand{\redstress}[1]{{\color{red}{#1}}}
\newcommand{\foo}{\color{jtublue}\makebox[0pt]{\textbullet}\hskip-0.5pt\vrule width 1pt\hspace{\labelsep}}
\usetikzlibrary{arrows, decorations.pathmorphing, backgrounds, positioning, fit, petri, automata,mindmap,trees}
\definecolor{yellow1}{rgb}{1,0.8,0.2}
\definecolor{DeepSkyBlue4}{RGB}{0,104,139}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
\renewcommand{\emph}{\textbf}


%--------------------------------------------------------
% Get rid of the navigation bar 
%--------------------------------------------------------
\beamertemplatenavigationsymbolsempty

%--------------------------------------------------------
% Define how the page counter will be displayed on slides
%--------------------------------------------------------
\newcommand{\footlinepagecounter}%
	{\insertframenumber{}/\inserttotalframenumber}
%--------------------------------------------------------

% Layout scheme for outer elements: split(give ALL section & subsection) or infolines(give CURRENT section & subsection)
%\useoutertheme{infolines}
\useoutertheme[subsection=false]{miniframes}

% Color scheme for outer elements: use background colors
\usecolortheme{whale}

% Layout scheme for inner elements: rounded elements
%\useinnertheme[shadow]{rounded}
\useinnertheme{rounded}

% Color scheme for inner elements: use foreground colors
\usecolortheme{orchid}

% Itemize items: default (triangle), circle, square, ball
\setbeamertemplate{itemize items}[default]

% Enumerate items: default, circle, square, ball
\setbeamertemplate{enumerate items}[circle]

% Outline: default, sections numbered, subsections numbered, circle, square, ball, ball unnumbered
% symbol in outline
\setbeamertemplate{sections/subsections in toc}[square]

% list the outline at the beginning of each section
\AtBeginSection[] % Do nothing for \subsection*
{
  \begin{frame}<beamer>
    \frametitle{Contents}
    \tableofcontents[currentsection]
  \end{frame}
}

\setbeamertemplate{caption}[numbered]

\setbeamertemplate{theorems}[numbered]

% General blocks:
\setbeamertemplate{blocks}[rounded][shadow=true]

% Background
\pgfdeclareimage[width=\paperwidth,height=0.9\paperheight]{bg}{swjtu_background.png}
\setbeamertemplate{background}{\pgfuseimage{bg}}

%--------------------------------------------------------
% Set up some lengths
%--------------------------------------------------------
% A paper width for the footline
\newlength{\halfpaperwidth}

% The left margin
\newlength{\headingleftmargin}
% Paper width minus margins
\newlength{\headingwidthminusmargins}
% Height of the heading block
\newlength{\headingheight}
% Height of the footer block
\newlength{\footerheight}

% The height for the titlepageheader in the title page
\newlength{\titlepageheaderheight}
% The height for the footer in the title page
\newlength{\titlepagefooterheight}
% The height for the main title block
\newlength{\titlepagemaintitleblockheight}
% The height for the subtitle block
\newlength{\titlepagesubtitleblockheight}
% The height for the name and date block
\newlength{\titlepagenamedateblockheight}
% The height for the institution block
%\newlength{\titlepageinstitutionheight}

% The lengths for spacing between name and date
\newlength{\titlepagespaceundername}
\newlength{\titlepagespaceunderdate}

% The length for the light thin bar


\setlength{\headingleftmargin}{0.05\paperwidth}
\setlength{\headingwidthminusmargins}{\paperwidth}
\addtolength{\headingwidthminusmargins}{-\headingleftmargin}
\setlength{\headingheight}{0.05\paperheight}
\setlength{\footerheight}{0.05\paperheight}

\setlength{\titlepageheaderheight}{0.025\paperheight}
\setlength{\titlepagefooterheight}{0.0\paperheight}
\setlength{\titlepagemaintitleblockheight}{0.2\paperheight}
\setlength{\titlepagesubtitleblockheight}{0.1\paperheight}
\setlength{\titlepagenamedateblockheight}{0.3\paperheight}
%\setlength{\titlepageinstitutionheight}{0.95cm}

\setlength{\titlepagespaceundername}{16pt}
\setlength{\titlepagespaceunderdate}{0pt}

%--------------------------------------------------------

%--------------------------------------------------------
% Set up the scheme for use
% with beamer
%--------------------------------------------------------

% Define colour names
%\definecolor{jtublue}{cmyk}{93,40,5,5} %#(113,26,95)
\definecolor{jtublue}{RGB}{17 145 230}%#(17,145,230)rgb(6.7%,56.9%,90.2%)
\setbeamercolor{jtutitle}{bg=white,fg=jtublue}
%\setbeamertemplate{title page}[default][colsep=-4bp,rounded=true]
% Set element colours
\setbeamercolor{title}{bg=black!5!white, fg=black}
\setbeamercolor{subtitle}{bg=white, fg=black}
\setbeamercolor{titlepageheader}{bg=white,fg=black}
\setbeamercolor{titlepagefooter}{bg=white,fg=black}
\setbeamercolor{block title}{fg=white,bg=jtublue}
\setbeamercolor{block body}{fg=black,bg=jtublue!10!white}
\setbeamercolor{structure}{bg=white, fg=jtublue}
% \setbeamercolor{alerted text}{fg=darkOrange}

%--------------------------------------------------------
% Set font sizes
%--------------------------------------------------------
\setbeamerfont{frametitle}{size=\large,series=\bfseries}
\setbeamerfont{title}{size=\Large,series=\bfseries}
\setbeamerfont{author}{size=\normalsize}
\setbeamerfont{date}{size=\footnotesize}
\setbeamerfont{subtitle}{size=\normalsize,series=\bfseries}
\setbeamerfont{block title}{size=\normalsize}
\setbeamerfont{structure}{size=\normalsize,series=\bfseries}

\setbeamertemplate{itemize item}{\scriptsize\raise1.25pt\hbox{\textbullet}}
\setbeamertemplate{itemize subitem}{\scriptsize\raise1.25pt\hbox{\textbullet}}
\setbeamertemplate{itemize subsubitem}{\scriptsize\raise1.25pt\hbox{\textbullet}}

%-----------------------------------------------------
% Define title page
%-----------------------------------------------------

\setbeamertemplate{title page}
{%
\begin{beamercolorbox}[sep=0cm,right,wd=\paperwidth,ht=\titlepageheaderheight,rightskip=\headingleftmargin]{titlepageheader}
\includegraphics[width=0.20\paperwidth]{swjtu_logo.png}
\vskip0.05\titlepageheaderheight
\end{beamercolorbox}
\begin{beamercolorbox}[center,wd=0.87\paperwidth,ht=\titlepagemaintitleblockheight,rounded=true,shadow=true]{title}
  \usebeamerfont{title}\inserttitle\\
  \vskip\titlepagespaceunderdate%
  \usebeamerfont{subtitle}\insertsubtitle
  \vskip\titlepagespaceunderdate%
\end{beamercolorbox}
%\nointerlineskip%
%\vskip-1pt%
\begin{beamercolorbox}[center,wd=\paperwidth,ht=\titlepagenamedateblockheight]{white}
      \usebeamerfont{author}\insertauthor\\
      \vskip\titlepagespaceunderdate%
      \quad\\
      %\usebeamerfont{institute}\insertinstitute\\
      \usebeamerfont{date}\insertinstitute\\
      \vskip\titlepagespaceunderdate%
      \usebeamerfont{date}\insertdate
      \vskip\titlepagespaceunderdate%
\end{beamercolorbox}%
\begin{beamercolorbox}[center,wd=\paperwidth,ht=\titlepagefooterheight]{titlepagefooter}
\end{beamercolorbox}
}
\begin{comment}
\begin{beamercolorbox}[center,wd=0.92\paperwidth,ht=\titlepagemaintitleblockheight,rounded=true,shadow=true]{title}
  \usebeamerfont{title}\inserttitle\\
  \vskip\titlepagespaceunderdate%
  \usebeamerfont{subtitle}\insertsubtitle
  \vskip\titlepagespaceunderdate%
\end{beamercolorbox}%
\nointerlineskip%
\vskip-1pt%
\begin{beamercolorbox}[center,wd=\paperwidth,ht=\titlepagesubtitleblockheight]{white}
%\tikz{\node[inner sep=0cm, text width=\paperwidth, minimum height=\titlepagesubtitleblockheight]{
  \usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle
\end{beamercolorbox}%
\end{comment}

% Footline: AUTHOR | TITLE | DATE FRAMENUMBER
\defbeamertemplate*{footline}{ru theme}{%
  \leavevmode%
  \hbox{%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor~~(\insertshortinstitute)
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
    \usebeamerfont{title in head/foot}\insertshorttitle
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
  \end{beamercolorbox}}%
  \vskip0pt%
}

\pgfdeclarehorizontalshading[frametitle.bg,frametitle right.bg]{beamer@frametitleshade}{\paperheight}{%
  color(0pt)=(frametitle.bg);
  color(\paperwidth)=(frametitle right.bg)}

\defbeamertemplate*{frametitle}{ru theme}{%
  \nointerlineskip%
  %\vskip-2pt%
  \hbox{\leavevmode
    \advance\beamer@leftmargin by -12bp%
    \advance\beamer@rightmargin by -12bp%
    \beamer@tempdim=\textwidth%
    \advance\beamer@tempdim by \beamer@leftmargin%
    \advance\beamer@tempdim by \beamer@rightmargin%
    \hskip-\Gm@lmargin\hbox{%
      \setbox\beamer@tempbox=\hbox{\begin{minipage}[b]{\paperwidth}%
          \vbox{}\vskip-.75ex%
          \leftskip0.3cm%
          \rightskip0.3cm plus1fil\leavevmode
          \usebeamerfont*{frametitle}\insertframetitle%
          \ifx\insertframesubtitle\@empty%
            \strut\par%
          \else
            \par{\usebeamerfont*{framesubtitle}{\usebeamercolor[fg]{framesubtitle}\insertframesubtitle}\strut\par}%
          \fi%
          \nointerlineskip
          \vbox{}%
          \end{minipage}}%
      \beamer@tempdim=\ht\beamer@tempbox%
      \advance\beamer@tempdim by 2pt%
      \begin{pgfpicture}{0.1mm}{0pt}{1.01\paperwidth}{\beamer@tempdim}
        \usebeamercolor{frametitle right}
        \pgfpathrectangle{\pgfpointorigin}{\pgfpoint{\paperwidth}{\beamer@tempdim}}
        \pgfusepath{clip}
        \pgftext[left,base]{\pgfuseshading{beamer@frametitleshade}}
      \end{pgfpicture}
      \hskip-\paperwidth%
      \box\beamer@tempbox%
    }%
    \hskip-\Gm@rmargin%
  }%
%  \nointerlineskip
%    \vskip-0.2pt
%    \hbox to\textwidth{\hskip-\Gm@lmargin\pgfuseshading{beamer@topshade}\hskip-\Gm@rmargin}
%    \vskip-2pt
}
\setbeamercolor{frametitle}{bg=black!5!white,fg=jtublue}
