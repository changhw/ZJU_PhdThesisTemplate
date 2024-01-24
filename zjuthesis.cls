%%
%% This is file `zjuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% zjuthesis.dtx  (with options: `zju')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2008-09-24 by Wei-Wei Guo <wwguo@zju.edu.cn>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 

%% 选项
\DeclareOption{master}{\def\zjudegree{M}}
\DeclareOption{doctor}{\def\zjudegree{D}}

\newif\ifzju@side\zju@sidetrue
\DeclareOption{twoside}{\zju@sidetrue}
\DeclareOption{oneside}{\zju@sidefalse}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\ifzju@side
   \LoadClass[a4paper,12pt,twoside,titlepage]{book}%\LoadClass[a4paper,12pt,twoside,titlepage,openany]{book} % openany means chapters start at any page
   \def\zjuside{T}
\else
   \LoadClass[a4paper,12pt,oneside,titlepage]{book}
   \def\zjuside{O}
\fi
%%==============================================================

%% 宏包
%\RequirePackage[top=2.0cm,bottom=2.4cm,left=3.4cm,right=2.4cm,includehead,includefoot]{geometry} %页面设置
\RequirePackage[top=1.7cm,bottom=2.0cm,left=2.6cm,right=2.0cm,includehead,includefoot]{geometry} %页面设置
\RequirePackage{xifthen} %逻辑语言
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,mathrsfs,bm}% math packages 数学公式包，非数学系可无视之
\RequirePackage{ctex}% 中文
% \RequirePackage{xeCJK}
\RequirePackage{times} % 字体美化
\RequirePackage[OT1]{fontenc}% 字体美化2
\RequirePackage{graphicx,graphics,epstopdf}% 图像
\RequirePackage{fancyhdr}% fancy页面格式
\RequirePackage{titlesec}%标题定制1
\RequirePackage{titletoc}%标题定制2
\RequirePackage{caption2}%标题定制3
\RequirePackage{nomencl}%术语表
\RequirePackage{float}%图片浮动
\RequirePackage{calc}%???
\RequirePackage{indentfirst}%默认空两格
\RequirePackage{algpseudocode}% algorithmicx宏包
\RequirePackage{algorithm}% algorithmicx宏包
\RequirePackage{url}%超链接
\urlstyle{tt}%超链接形式
\RequirePackage{lscape}%横排页
\RequirePackage{longtable}%长表格
\RequirePackage{booktabs}%三线表
\RequirePackage{multirow}%多行合并
\RequirePackage{dcolumn}%???
\RequirePackage{colortbl}%???
\RequirePackage{threeparttable}%???
\RequirePackage{array}%对齐
\RequirePackage[super,square,comma,sort&compress]{natbib}%参考文献样式
\bibliographystyle{preparations/gbt7714-2005.bst}%参考文献要求
% \bibliographystyle{unsrt} % Haowei added
% \bibliographystyle{alpha} % name+year
%%===============================================================
% 其他宏包


\DeclareRobustCommand\nobreakspace{\leavevmode\nobreak\ }


%页眉页脚
% \setlength{\headheight}{27pt}
% \setlength{\footskip}{1.3cm}
% \raggedbottom

% \frenchspacing
% \widowpenalty=10000
% \setlength\parskip{0pt}

%排版
\renewcommand{\baselinestretch}{1.25}  % 行距
\renewcommand{\arraystretch}{0.8} % 公式间距
\addtolength{\bibsep}{-0.5em}
%字号
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}

%字体准备
% \newCJKfontfamily\Songti[AutoFakeBold = {1.7},Path=preparations/]{SimSun}%宋体
% \newCJKfontfamily[fs]\Fangsong[AutoFakeBold = {1.7},Path=preparations/]{Fangsong}%仿宋
% \newCJKfontfamily[kai]\Kaiti[AutoFakeBold = {1.7},Path=preparations/]{KaiTi}%楷体
% \newCJKfontfamily[hei]\Heiti[AutoFakeBold = {1.7},Path=preparations/]{SimHei}%黑体
\setCJKfamilyfont{song}[AutoFakeBold = {1.7},Path=preparations/]{SimSun}
\newcommand{\Songti}{\CJKfamily{song}}
\setCJKfamilyfont{fs}[AutoFakeBold = {1.7},Path=preparations/]{Fangsong}
\newcommand{\Fangsong}{\CJKfamily{fs}}
\setCJKfamilyfont{kai}[AutoFakeBold = {1.7},Path=preparations/]{KaiTi}
\newcommand{\Kaiti}{\CJKfamily{kai}}
\setCJKfamilyfont{hei}[AutoFakeBold = {1.7},Path=preparations/]{SimHei}
\newcommand{\Heiti}{\CJKfamily{hei}}

\newcommand{\TNR}{\fontspec{Times New Roman}}%Times New Roman

% \DeclareRobustCommand{\Fangsong}{\CJKfamily{fangsong}}
% \DeclareRobustCommand{\Heiti}{\CJKfamily{heiti}}
% \DeclareRobustCommand{\Kaiti}{\CJKfamily{kaiti}}
% \DeclareRobustCommand{\lishu}{\CJKfamily{lishu}}
% \DeclareRobustCommand{\Songti}{\CJKfamily{songti}}
% \DeclareRobustCommand{\youti}{\CJKfamily{youti}}

\setmainfont{Times New Roman}%英文默认 Times New Roman
\setCJKmainfont[Path=preparations/]{Fangsong}%中文默认仿宋

\setcounter{secnumdepth}{4}%============================================================================
%============================================================================
% 章节格式设置
\titleformat{\chapter}[hang]%章定义
{\xiaosan\bfseries\Fangsong}{\thechapter}{1em}{}{}%小三号仿宋加粗
\titlespacing{\chapter}{0pt}{2.3\baselineskip}{1.3\baselineskip}%\titlespacing{\chapter}{0pt}{0.3\baselineskip}{0.3\baselineskip}
\titlecontents{chapter}[1.5em]{}{\contentslabel{1.5em}}{\hspace{-1.5em}}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\section}[hang]%节定义
{\sihao\bfseries\Fangsong}{\thesection}{1em}{}{}%四号仿宋加粗
\titlespacing{\section}{0pt}{0.2\baselineskip}{0.2\baselineskip}
\titlecontents{section}[2.2em]{}{\contentslabel{2.2em}}{\hspace{-3.2em}}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\subsection}[hang]%小节定义
{\xiaosi\bfseries\Fangsong}{\thesubsection}{1em}{}{}%四号仿宋
\titlespacing{\subsection}{0pt}{0.1\baselineskip}{0.1\baselineskip}
\titlecontents{subsection}[3.0em]{}{\contentslabel{3.0em}}{\hspace{-5.0em}}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\subsubsection}[hang]%二层小节定义
{\xiaosi\bfseries\Fangsong}{\thesubsubsection}{1em}{}{}%四号仿宋
\titlespacing{\subsubsection}{0pt}{0.0\baselineskip}{0.0\baselineskip}
\pagestyle{fancy}\fancyhf{}
%============================================================================
%============================================================================
% 标题页眉页脚格式设置（可修改）
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\ifzju@side
  \fancypagestyle{plain}{
    \fancyhead[LE]{\xiaowu\songti 浙江大学\ifthenelse{\equal{\zjudegree}{D}}{博士}{硕士}学位论文}
    \fancyhead[RO]{\xiaowu\songti\leftmark}
    \fancyfoot[LE,RO]{\xiaowu\thepage}}
  \fancyhead[LE]{\xiaowu\songti 浙江大学\ifthenelse{\equal{\zjudegree}{D}}{博士}{硕士}学位论文}
  \fancyhead[RO]{\xiaowu\songti\leftmark}
  \fancyfoot[LE,RO]{\xiaowu\thepage}
\else
  \fancypagestyle{plain}{
    \fancyhead[L]{\xiaowu\songti 浙江大学\ifthenelse{\equal{\zjudegree}{D}}{博士}{硕士}学位论文}
    \fancyhead[R]{\xiaowu\songti\leftmark}
    \fancyfoot[C]{\xiaowu\thepage}}
  \fancyhead[L]{\xiaowu\songti 浙江大学\ifthenelse{\equal{\zjudegree}{D}}{博士}{硕士}学位论文}
  \fancyhead[R]{\xiaowu\songti\leftmark}
  \fancyfoot[C]{\xiaowu\thepage}
\fi
%\renewcommand{\contentsname}{\centerline{目 \quad 次}}
\renewcommand{\contentsname}{目 \quad 次}
%\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listfigurename}{图目录}
%\renewcommand{\listtablename}{\centerline{表~目~录}}
\renewcommand{\listtablename}{表目录}
\setcounter{tocdepth}{2}  % 设置目录的深度到 subsection
%\renewcommand{\bibname}{参~考~文~献}
\renewcommand{\bibname}{参考文献}
\renewcommand{\nomname}{\centerline{术~语~表}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature
\renewcommand{\figurename}{图} % 插图题头
\renewcommand{\tablename}{表} % 插表题头
\renewcommand{\captionlabeldelim}{} %% 定义如 "图(表)1: 示例" 中的间隔符号,如 ":" ,这里定义为空
\renewcommand{\captionlabelsep}{\hspace{1em}} %定义图表编号与标题间的间隔距离
\setlength{\belowcaptionskip}{2mm}
\setlength{\abovecaptionskip}{-1mm}
%\renewcommand{\footnotesize}{\xiaowu}
\let\oldfootnote\footnote
\renewcommand\footnote[1]{\oldfootnote{\renewcommand\baselinestretch{1.0}%
\large\footnotesize\ignorespaces#1}} \addtolength{\footnotesep}{1pt}
\addtolength{\skip\footins}{2mm plus 2mm}
\renewcommand{\@makefnmark}{\mbox{\textsuperscript{\textcircled{\tiny\@thefnmark}}}}
\newcommand{\citezp}[2][]{\citep{#2}\textsuperscript{#1}}
\newcommand{\citezt}[2][]{\citet{#2}\textsuperscript{#1}}
\newcommand{\citez}[2][]{\cite{#2}\textsuperscript{#1}}
\newcommand\xunderline[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}%自定义下划线
%============================================================================
% 定理环境设置
\newtheoremstyle{zjutheorem}
   {13pt}{13pt}{\Kaiti}{0pt}{\heiti}{：}{0pt}{}
\theoremstyle{zjutheorem}
\newtheorem{lem}{引理~}[chapter]
\newtheorem{defn}{定义~}[chapter]
\newtheorem{thm}{定理~}[chapter]
\newtheorem{cor}{推论~}[chapter]
\newtheorem{rem}{注~}[chapter]
\newtheorem{pro}{证明~}[chapter]
\newtheorem{prop}{命题~}[chapter]
\newtheorem*{lem*}{引理~}
\newtheorem*{defn*}{定义~}
\newtheorem*{thm*}{定理~}
\newtheorem*{cor*}{推论~}
\newtheorem*{rem*}{注~}
\newtheorem*{pro*}{证明~}
\newtheorem*{prop*}{命题~}
\newcolumntype{.}{D{.}{.}{2.4}}

%============================================================================

\DeclareRobustCommand{\zjuclass}{}
\DeclareRobustCommand{\zjusecurity}{}
\DeclareRobustCommand{\zjutitlec}{}
\DeclareRobustCommand{\zjutitlecb}{}
\DeclareRobustCommand{\zjutitlecc}{}
\DeclareRobustCommand{\zjutitlee}{}
\DeclareRobustCommand{\zjutitleeb}{}
\DeclareRobustCommand{\zjutitleec}{}
\DeclareRobustCommand{\zjuauthor}{}
\DeclareRobustCommand{\zjuauthorid}{}
\DeclareRobustCommand{\zjumentor}{}
\DeclareRobustCommand{\zjumentorco}{}
\DeclareRobustCommand{\zjumajor}{}
\DeclareRobustCommand{\zjusubject}{}
\DeclareRobustCommand{\zjuschool}{}
\DeclareRobustCommand{\zjudate}{}
\DeclareRobustCommand{\zjuapprovaldate}{}
\DeclareRobustCommand{\zjudefencedate}{}
\DeclareRobustCommand{\zjudefencedatec}{}
\DeclareRobustCommand{\zjudefencedatee}{}

\DeclareRobustCommand{\zjurevieweronec}{}
\DeclareRobustCommand{\zjurevieweronee}{}
\DeclareRobustCommand{\zjureviewertwoc}{}
\DeclareRobustCommand{\zjureviewertwoe}{}
\DeclareRobustCommand{\zjureviewerthreec}{}
\DeclareRobustCommand{\zjureviewerthreee}{}
\DeclareRobustCommand{\zjureviewerfourc}{}
\DeclareRobustCommand{\zjureviewerfoure}{}
\DeclareRobustCommand{\zjureviewerfivec}{}
\DeclareRobustCommand{\zjureviewerfivee}{}

\DeclareRobustCommand{\zjucommitteemainc}{}
\DeclareRobustCommand{\zjucommitteemaine}{}
\DeclareRobustCommand{\zjucommitteeonec}{}
\DeclareRobustCommand{\zjucommitteeonee}{}
\DeclareRobustCommand{\zjucommitteetwoc}{}
\DeclareRobustCommand{\zjucommitteetwoe}{}
\DeclareRobustCommand{\zjucommitteethreec}{}
\DeclareRobustCommand{\zjucommitteethreee}{}
\DeclareRobustCommand{\zjucommitteefourc}{}
\DeclareRobustCommand{\zjucommitteefoure}{}
\DeclareRobustCommand{\zjucommitteefivec}{}
\DeclareRobustCommand{\zjucommitteefivee}{}
\DeclareRobustCommand{\zjucommitteesixc}{}
\DeclareRobustCommand{\zjucommitteesixee}{}
\DeclareRobustCommand{\zjuthesis}{\textsc{ZJU}\-\textsc{Thesis}}
\DeclareRobustCommand{\thuthesis}{\textsc{Thu}\-\textsc{Thesis}}
\DeclareRobustCommand{\zjubiaozhun}{《浙江大学研究生学位论文编写规则》}
\DeclareRobustCommand{\gbt7714}{《GB/T 7714-2005：文后参考文献著录规则》}
\endinput
%%
%% End of file `zjuthesis.cls'.
