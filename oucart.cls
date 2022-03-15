\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucart}[OUC Undergraduate Thesis Template]

\LoadClass[11pt,a4paper]{article}

\RequirePackage{ctex}
\RequirePackage{CJKutf8}

% \RequirePackage[UTF8,scheme=plain]{ctex}

\RequirePackage{amsmath}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ulem}

% 页边距设置
\RequirePackage{geometry}
\linespread{1.35}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{assets/cover}
\RequirePackage{assets/abstractkeywords}
\RequirePackage{assets/signature}

% ``目录'', ``参考文献''样式
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{目$\qquad$录}}}}
\renewcommand{\refname}{\centerline{参考文献}}

% 调整页边距
\geometry{top=2.54cm,bottom=2.54cm,left=3cm,right=3cm} 

\makeatletter

% 修改引用标记为上角标
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

% 定义基本信息
\newcommand*{\entitle}[1]{
  \def\@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}
\newcommand*{\studentid}[1]{
  \def\@studentid{#1}
}
\newcommand*{\department}[2]{
  \def\@college{#1}
  \def\@department{#2}
}

\lhead{}
\rhead{}
\chead{\small{\@title}} % 页眉

\makeatother

% 修改标题样式
\titleformat{\section}
            {\zihao{2}\heiti\raggedright}
            {\arabic{section}.}{1em}
            {}
\titleformat{\subsection}
            {\zihao{3}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}}{1em}
            {}
\titleformat{\subsubsection}
            {\zihao{4}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}
            {}
% 修改目录样式
\titlecontents{section}
              [10mm]
              {\zihao{4}\songti}
              {\contentslabel{1em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}
              [17mm]
              {\zihao{-4}\songti}
              {\contentslabel{2em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsubsection}
              [25mm]
              {\zihao{-4}\songti}
              {\contentslabel{3em}}
              {}
              {\titlerule*{.}\contentspage}
% 为了把致谢和参考文献放入目录
\titlecontents{nonumbersection}
              [4.6mm]
              {\zihao{-4}\songti}
              {\contentslabel{0em}}
              {}
              {\titlerule*{.}\contentspage}

% 修改部分页眉样式
\fancypagestyle{zhabstract}{
\chead{\small{摘\ \ \ 要}}
}

\fancypagestyle{enabstract}{
\chead{\small{Abstract}}
}

\fancypagestyle{tableofcontents}{
\chead{\small{目\ \ \ 录}}
}

% 图、表、公式样式
\captionsetup{figurewithin=section}
\captionsetup{tablewithin=section}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}
\renewcommand{\labelenumi}{(\theenumi)}
\renewcommand{\captionfont}{\zihao{5}\heiti} 
\numberwithin{equation}{section}
