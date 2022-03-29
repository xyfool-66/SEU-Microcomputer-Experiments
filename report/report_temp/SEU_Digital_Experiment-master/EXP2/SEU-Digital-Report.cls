%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%             东南大学数电实验报告 LaTeX 模板
%%                SEU-Circuit-Report.cls
%% https://github.com/Teddy-van-Jerry/SEU_Digital_Report
%% ======================================================
%% 版本信息：
%% v1.0 (Nov. 07, 2021)
%% ------------------------------------------------------
%% 模板制作：
%% Teddy van Jerry, (me@teddy-van-jerry.org)
%% * GitHub: https://github.com/Teddy-van-Jerry
%% * Website: https://teddy-van-jerry.org
%% * Blog: https://blog.teddy-van-jerry.org
%% ------------------------------------------------------
%% 使用说明：
%% 1. 编译使用 XeLaTeX 和 Biber
%% 2. 报告基本信息通过修改导言区以 exp 开头的命令
%% 3. 参考文献位于 ref/ref.bib
%% 4. 报告模板依据 MIT License 开源共享
%% ------------------------------------------------------
%% Copyright 2021 (c) Teddy van Jerry
%%
%% Permission is hereby granted, free of charge, to any
%% person obtaining a copy of this software and
%% associated documentation files (the "Software"), to
%% deal in the Software without restriction, including
%% without limitation the rights to use, copy, modify,
%% merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom
%% the Software is furnished to do so, subject to the
%% following conditions:
%%
%% The above copyright notice and this permission notice
%% shall be included in all copies or substantial
%% portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF
%% ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
%% LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
%% FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
%% EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
%% FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
%% AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
%% USE OR OTHER DEALINGS IN THE SOFTWARE.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SEU-Digital-Report}[2021/11/05 SEU Digital Experiment Report Template]
\def\@@ptsize{12pt}
\DeclareOption{9pt}{\def\@@ptsize{9pt}}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[a4paper,onecolumn,\@@ptsize]{article}
\RequirePackage{ctex}
\RequirePackage[top=2.54cm,bottom=2.54cm,left=2cm,right=2cm]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{color}
\RequirePackage{bm}
\RequirePackage{fancyhdr}
\RequirePackage{algorithm}
\RequirePackage{enumerate}
\RequirePackage{algpseudocode}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{subfig}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{amssymb,amsmath,amsfonts,amsthm}
\RequirePackage{mathabx}
\RequirePackage{listings}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{lipsum}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{makecell}
\RequirePackage{sectsty}
\RequirePackage{url}
\RequirePackage{footnote}
\RequirePackage{lastpage}
\RequirePackage[many]{tcolorbox}
\RequirePackage{babel}
\RequirePackage{titlesec}
\RequirePackage{type1cm}
\RequirePackage[normalem]{ulem}
\DeclareCaptionFont{kaishu}{\kaishu}
\DeclareCaptionFont{heiti}{\heiti}
\RequirePackage[font={footnotesize},textfont={kaishu},labelfont={heiti,color={blue},bf}]{caption}
\RequirePackage[colorlinks=true,linkcolor=purple,urlcolor=blue,citecolor=red]{hyperref}
\RequirePackage[backend=biber,style=gb7714-2015,maxnames=3]{biblatex} % 参考文献样式：GB7714-2015

%% 文档信息命令
\global\let\@expno\@empty
\global\let\@expname\@empty
\global\let\@expauthor\@empty
\global\let\@expID\@empty
\global\let\@expauthor\@empty
\global\let\@expID\@empty
\global\let\@expmates\@empty
\global\let\@expmatesID\@empty
\global\let\@expmajor@empty
\global\let\@explab\@empty
\global\let\@expdate\@empty
\global\let\@expreportdate\@empty
\global\let\@expgrade\@empty
\global\let\@exptutor\@empty
\newcommand{\expno}[1]{\gdef\@expno{#1}} % 实验序号
\newcommand{\expname}[1]{\gdef\@expname{#1}} % 实验名称
\newcommand{\expauthor}[1]{\gdef\@expauthor{#1}} % 姓名
\newcommand{\expID}[1]{\gdef\@expID{#1}} % 学号
\newcommand{\expmates}[1]{\gdef\@expmates{#1}} % 同组
\newcommand{\expmatesID}[1]{\gdef\@expmatesID{#1}} % 学号（同组）
\newcommand{\expmajor}[1]{\gdef\@expmajor{#1}} % 专业
\newcommand{\explab}[1]{\gdef\@explab{#1}} % 实验室
\newcommand{\expdate}[1]{\gdef\@expdate{#1}} % 实验时间
\newcommand{\expreportdate}[1]{\gdef\@expreportdate{#1}} % 报告时间
\newcommand{\expgrade}[1]{\gdef\@expgrade{#1}} % 成绩评定
\newcommand{\exptutor}[1]{\gdef\@exptutor{#1}} % 评阅老师

%% 设置标题样式
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\titleformat{\section}{\fontsize{14pt}{21pt}\selectfont\bfseries}{\zhnumber{\thesection}.}{0.5em}{}
\titleformat{\subsection}{\fontsize{12pt}{18pt}\selectfont}{(\zhnumber{\thesubsection})}{0.5em}{}
\titleformat{\subsubsection}{\normalsize}{\thesubsubsection.}{0.5em}{}

% typerwriter font
% \renewcommand{\ttdefault}{pcr}

%% 设置 1.25 倍行距
\renewcommand{\baselinestretch}{1.25}

%% 设置页眉页脚
\pagestyle{fancy}
\fancyhf{}
%\rhead{\small \@expID~\@expauthor}
%\lhead{\small \@expname}
\chead{\small 《数字逻辑与计算机体系结构（含实验）》实验报告\qquad 学号\quad \@expID}
\cfoot{\small \thepage~/~\pageref*{LastPage}}

%% 添加参考文献 bib 文件
\addbibresource{ref/ref.bib}
\AtBeginBibliography{\small}

%% 定义命令
\newcommand{\expexpect}{{\kaishu 理论数值计算：}}
\newcommand{\expanalyze}{{\kaishu 实验结果分析：}}
\newcommand{\expsimulate}{{\kaishu 仿真运行结果：}}
\newcommand{\expcheck}{\textcolor{purple}{（验收）}}
\newcommand{\emptyline}{{

    ~ % an empty line

}}

%% 设置代码块样式
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{
	numbers=left,  
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=fixed,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\ttfamily},
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=4,
    extendedchars=false,
    morekeywords={documentclass}
}

%% 环境定义
\tcbuselibrary{theorems}

\newtcbtheorem{note}{注意}%
{
    breakable,
    enhanced,
    colback=red!5,
    colframe=red!50!black,
    fonttitle=\bfseries
}{note}

\newtcbtheorem{analyze}{结果分析}%
{
    breakable,
    enhanced,
    colback=green!5,
    colframe=green!45!black,
    fonttitle=\bfseries
}{ana}

\newtcbtheorem{idea}{思考}%
{
    breakable,
    enhanced,
    colback=blue!5,
    colframe=blue!60!black,
    fonttitle=\bfseries
}{idea}

\newtcbtheorem{device}{实验器材}%
{
    breakable,
    enhanced,
    colback=yellow!5,
    colframe=yellow!60!black,
    fonttitle=\bfseries
}{device}

\newtheorem{theorem}{定理}

%% 打印实验报告封面页
\newcommand{\exptitlepage}{
    \thispagestyle{empty} % 取消首页页码
    \vspace{1cm}
    \begin{center}
        ~

        {\Huge\bfseries 东南大学}\\
        \vspace{2cm}
        {\Huge\bfseries\kaishu 《数字逻辑与计算机体系结构（含实验）》}\\
        \vspace{0.8cm}
        {\Huge\bfseries\kaishu 实验报告}\\
        \vspace{3cm}
        {\LARGE\bfseries 实验\@expno\quad\@expname}\\
        \vspace{5.5cm}
    \end{center}
    \begin{multicols}{2}
        \Large
        \noindent
        \bgroup
        \def\arraystretch{1.3}
        \begin{tabular}{ll}
            \makebox[4em][s]{\textbf{姓名}}：& \@expauthor \\
            \makebox[4em][s]{\textbf{同组}}：& \@expmates \\
            \makebox[4em][s]{\textbf{专业}}：& \@expmajor \\            	
            \makebox[4em][s]{\textbf{实验时间}}：& \@expdate \\              
            \makebox[4em][s]{\textbf{评定成绩}}：& \@expgrade \\
        \end{tabular}
        \egroup
        \vfill\null
        \columnbreak
        \noindent
        \bgroup
        \def\arraystretch{1.3}
        \begin{tabular}{ll}
            \makebox[4em][s]{\textbf{学号}}：& \@expID \\
            \makebox[4em][s]{\textbf{学号}}：& \@expmatesID \\
            \makebox[4em][s]{\textbf{实验室}}：& \@explab \\            	
            \makebox[4em][s]{\textbf{报告时间}}：& \@expreportdate \\              
            \makebox[4em][s]{\textbf{评阅教师}}：& \@exptutor \\
        \end{tabular}
        \egroup
    \end{multicols}
    \vspace{\fill}
    \begin{center}
        \textcolor{gray}{\LaTeX {\kaishu 模板~\copyright~2021~赵舞穹}\\v1.0 (2021/11/07)}
    \end{center}
    \clearpage
}
