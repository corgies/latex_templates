%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% This is file 'jsik.cls'
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jsik}[2009/3/10 ver 0.1]

% packages include
\input{jarticle.sty}

\usepackage{ascmac}
\usepackage{balance}
\usepackage{multicol}
\usepackage[hiresbb]{}
\usepackage[dvipdfmx]{color}
\usepackage{cite}
\usepackage{url}
\usepackage{float}
\usepackage{booktabs}
\usepackage{secdot}
\usepackage[table]{xcolor}
\usepackage{nonfloat}
\usepackage[dvipdfmx]{hyperref}
\usepackage{framed}
\usepackage{amsmath,amssymb}

\usepackage{threeparttable} % 表の内部で脚注を使う

\usepackage{setspace} % 行間 via. https://saphir-jaune.hatenablog.com/entry/2016/07/27/232010

\usepackage{subfiles}
\usepackage{enumitem}

\usepackage{multirow}
\usepackage{colortbl}

% 図の上下の余白
% via. https://shirokumabook.wordpress.com/2011/06/16/tex-%E5%9B%B3%E3%81%AE%E4%B8%8A%E4%B8%8B%E3%81%AE%E4%BD%99%E7%99%BD%E3%82%92%E6%8C%87%E5%AE%9A%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95/
%\setlength\intextsep{0pt}
%\setlength\textfloatsep{0pt}

% PDF目次の文字化け対策
\usepackage{atbegshi}
\ifnum 42146=\euc"A4A2
\AtBeginShipoutFirst{\special{pdf:tounicode EUC-UCS2}}
\else
\AtBeginShipoutFirst{\special{pdf:tounicode 90ms-RKSJ-UCS2}}
\fi

% 参考文献一覧の行間を詰める (via. https://qiita.com/izumin5210/items/7c9035d8a77b9dbac1d1)
% \makeatletter
%   \renewenvironment{thebibliography}[1]{%
%     \global\let\presectionname\relax
%     \global\let\postsectionname\relax
%     \section*{\refname}\@mkboth{\refname}{\refname}%
%     \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%           \leftmargin\labelwidth
%           \advance\leftmargin\labelsep
%           % 文字サイズ？
%           \setlength\baselineskip{8.0pt}
%           % アイテム間のマージン
%           \setlength\itemsep{-0.1zh}
%           \@openbib@code
%           \usecounter{enumiv}%
%           \let\p@enumiv\@empty
%           \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%     \sloppy
%     \clubpenalty4000
%     \@clubpenalty\clubpenalty
%     \widowpenalty4000%
%     \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%     \endlist}
% \makeatother

% 図の前後の余白を詰める (via. https://qiita.com/izumin5210/items/7c9035d8a77b9dbac1d1)

%% 図と図の間のスペース
%%\setlength\floatsep{2truemm}
%% 本文と図の間のスペース
% \setlength\textfloatsep{2truemm}
%% 本文中の図のスペース
%%\setlength\intextsep{0pt}
%% 図とキャプションの間のスペース
% \setlength\abovecaptionskip{2truemm}
% table, arrayでの行間指定
% \renewcommand{\arraystretch}{0.75}

% PDF目次の文字化け対策
\usepackage{atbegshi}
\ifnum 42146=\euc"A4A2
\AtBeginShipoutFirst{\special{pdf:tounicode EUC-UCS2}}
\else
\AtBeginShipoutFirst{\special{pdf:tounicode 90ms-RKSJ-UCS2}}
\fi

%\newcounter{@paper}
%\setcounter{@paper}{1}
%\setlength\paperheight {297mm}%
%\setlength\paperwidth  {210mm}
%\input{jsize12.clo}

% page layout
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\topmargin}{-1truein}
\addtolength{\topmargin}{35truemm}
\setlength{\footskip}{0pt}
\setlength{\footskip}{-1truein}
\addtolength{\footskip}{25truemm}
\setlength{\textheight}{237truemm}
\setlength{\oddsidemargin}{-1truein}
\setlength{\evensidemargin}{-1truein}
\addtolength{\oddsidemargin}{25truemm}
\addtolength{\evensidemargin}{25truemm}
\setlength{\textwidth}{160truemm}
\setlength{\columnsep}{2em}

% maketitle
\def\articletype#1{\gdef\@articletype{#1}}
\def\jtitle#1{\gdef\@jtitle{#1}}
\def\etitle#1{\gdef\@etitle{#1}}
\def\jauthor#1{\gdef\@jauthor{#1}}
\def\eauthor#1{\gdef\@eauthor{#1}}
\def\affiliation#1{\gdef\@affiliation{#1}}
\def\jabstract#1{\gdef\@jabstract{#1}}
\def\eabstract#1{\gdef\@eabstract{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\maketitle{
  \twocolumn[
    \begin{flushleft}
      \vspace{-0.75cm}
      {\bf \@articletype}
    \end{flushleft}%
    \begin{center}
%      \vspace{0.25cm}
      {\Large \bf \@jtitle } \\
%      \vspace{0.25cm}
      {\Large \bf \@etitle } \\
      \smallskip
      {\large \@jauthor } \\
      {\large \@eauthor } \\
    \end{center}
      {\normalsize \@affiliation }%
\bigskip
\par
{\hspace*{12pt}\@jabstract}
\par
\medskip
{\hspace*{12pt}\@eabstract}
\par
\vspace{0.25cm}
{キーワード: \@keywords}
\bigskip
\bigskip
    \setcounter{section}{0}%
    \setcounter{figure}{0}%
  ]
}

% \cite
%  usage: \cite{bibkey}
\def\@cite#1#2{$^{\mbox{\scriptsize{[#1\if@tempswa , #2\fi}]}}$}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% End of file `jsik.cls'.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 