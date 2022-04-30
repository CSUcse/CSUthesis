%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  作者：    wfwufan@csu.euu.cn
%  版本：    2020年4月8日
%  项目主页: https://github.com/CSUcse/CSUthesis
%  
%  非常感谢郭大侠提供基础中南大学学位论文LaTex模板(https://github.com/CSGrandeur/CSU-Thesis-LaTeX-Template)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 本模版根据2020中南大学研究生学位论文撰写规范创建
% 参考源：http://oa.its.csu.edu.cn/Home/ReleaseMainText/909CD53BF50943CD97B83C352032FEA4
% 论文内容一般应由十一个主要部分组成，依次为：
% 1.封面、扉页；
% 2.学位论文原创性声明和版权使用授权书；
% 3.中文摘要；
% 4.英文摘要；
% 5.目录；
% 6.符号说明（必要时）；
% 7.论文正文；
% 8.参考文献；
% 9.附录（必要时）；
% 10.攻读博（硕）士学位期间主要研究成果；
% 11.致谢。
% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CSUthesis}[2018/12/30 v1.1 Standard LaTeX document class]
\ProcessOptions\relax
%% 读取基类
\LoadClass[a4paper,12pt]{article}
% \LoadClass[UTF8,a4paper,twoside,zihao=-4]{ctexbook}
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{CSUthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 相关宏包 %
% ------------------------------------%
% 支持中文的 ctex 宏包
\RequirePackage{ctex}
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{ntheorem}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\allowdisplaybreaks[4] %允许公式跨页面显示

% 页面布局
\RequirePackage{geometry}
% 自定义关键词
\RequirePackage{pgfkeys}
% 设置目录
\RequirePackage{titletoc}
% 设置字体
\RequirePackage{fontenc}
% 设置颜色
\RequirePackage{xcolor}
% 设置页眉和页脚
\RequirePackage{fancyhdr}
% 设置标题格式
\RequirePackage{titlesec}
% 超链接 hyperref 的设置
%\RequirePackage{hyperref}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black,baseurl=empty]{hyperref}
% 插入图片
\RequirePackage{graphicx}
% 表格
\RequirePackage{array}
% 长表格
\RequirePackage{longtable}
% % 弹性表格
% \RequirePackage{tabularx}
% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs}
% multirow 支持在表格中跨行
\RequirePackage{multirow}
% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
% 设置代码环境
\RequirePackage{listings}
% 首行缩进
\RequirePackage{indentfirst}
% jing: ccaption宏包不能出现在 caption 宏包之后
% % 设置中英文标题
% \RequirePackage{ccaption}
% 设置浮动体的标题
\RequirePackage{caption}
\RequirePackage{subcaption}
% 定制列表环境
\RequirePackage{enumitem}
% 提供\AtBeginEnvironment以方便全局调整一些结构的设置
\RequirePackage{etoolbox}
% % 下划线 
% \RequirePackage{ulem}
% % 尺寸计算
% \RequirePackage{calc}
% 算法编号，按需调整需要的算法包
\usepackage{algorithm}
\usepackage{algorithmic}
%\usepackage{algorithmicx}
%\usepackage{algpseudocode}
\usepackage{array}
\usepackage{supertabular}


\setlength\heavyrulewidth{1.5pt}
\setlength\arrayrulewidth{0.75pt}
\setlength\lightrulewidth{0.75pt}

% 参考文献格式 GBT7714-2005
% 来自https://github.com/CTeX-org/gbt7714-bibtex-style
% \RequirePackage{natbib} % gbt7714.sty已经包含了natbib宏包
%\RequirePackage[numbers,2005]{gbt7714-2005}

%%%%我们使用了 natbib 宏包来定制参考文献，除了常用的 \ cite{} 命令来提供 full size 的参考文献引用，还提供了 \citess{} 命令用于提供上标（右上角）时候的引用（ss 是 superscript 的缩写）。最后一句代码用于调节参考文献条目之间距离。
\RequirePackage[square,numbers,sort&compress]{natbib}
\newcommand{\citess}[1]{\textsuperscript{\cite{#1}}}
%\setlength{\bibsep}{1pt plus 0.3ex}

% 页面布局 %
% -------------------------------------------------------%
\geometry{top=25.4mm,bottom=25.4mm,left=31.4mm,right=31.4mm}
% 给页眉留足空间（否则会有 \headheight is too small的warning）
% “磅”是衡量印刷字体大小的单位,约等于七十二分之一英寸。
% 而 1英寸＝25.4毫米，则1磅＝25.4/72≈0.353毫米。
% 磅和 LaTeX的 pt- points (大约 1/72 inch) 是一致的。
\renewcommand*{\baselinestretch}{1.0}   % 几倍行间距
\setlength{\baselineskip}{20pt}         % 基准行间距

\setlength{\bibsep}{0.5ex} % 参考文献条目间距

% 设置字体 %
% -------------------------------------------------------%
\setmainfont{Times New Roman}
\setmonofont{Courier New}
\setsansfont{Arial}
\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
}
% 协议页的标题按模板是华文新魏
\setCJKfamilyfont{hwxw}{STXinwei}[AutoFakeBold]
\newcommand{\huawenxinwei}{\CJKfamily{hwxw}}
% 重定义ctex定义好的宋体和黑体，以支持伪加粗AutoFakeBold
% 即支持类似word里的给黑体、宋体等中文字体加粗的操作，用\bfseries
\let\heiti\relax
\newCJKfontfamily[hei]\heiti{SimHei}[AutoFakeBold]
\let\songti\relax
\newCJKfontfamily[song]\songti{SimSun}[AutoFakeBold]
\let\TimesNewRoman\relax
\newCJKfontfamily[TimesNewRoman]\TimesNewRoman{Times New Roman}[AutoFakeBold]


% 每行缩进两个汉字
\setlength{\parindent}{2em}

%  中文标题名称
\newcommand*{\csu@cap@contentsname}{目录}
\newcommand*{\csu@cap@listfigurename}{插图清单}
\newcommand*{\csu@cap@listtablename}{附表清单}
%\newcommand{\csu@cap@denotation@ctitle}{符号说明}
\newcommand*{\csu@cap@refname}{参考文献}
\newcommand*{\csu@cap@indexname}{索引}
\newcommand*{\csu@cap@figurename}{图}
\newcommand*{\csu@cap@tablename}{表}
\newcommand*{\csu@cap@appendixname}{附录}
\newcommand*{\csu@cap@abstractname}{摘要}
 %%%  中文关键字
\newcommand*{\csu@cap@keywordsname}{关键字}


% 定制titlepage
% 定义命令和定义相应的宏。
%----------------------------------------------------------------------%
% 预定义全局使用的文字，如姓名、专业等信息，在content/info.tex中定义
%----------------------------------------------------------------------%
% 以下定义封面相关命令和相应的宏，以titleen为例，\titleen为实际在源码中使用的命令，一旦执行就会因为\gdef\@titleen{#1}使得其产生一个\@titleen的宏，而该宏能够在后续的环境中使用。
\newcommand*{\titlecn}[1]{\gdef\@titlecn{#1}}                           % 中文标题
\newcommand*{\titleen}[1]{\gdef\@titleen{#1}}                           % 英文标题
\newcommand*{\priormajor}[1]{\gdef\@priormajor{#1}}                     % 一级学科（学科专业）
\newcommand*{\minormajor}[1]{\gdef\@minormajor{#1}}                     % 二级学科（学科方向）
\newcommand*{\interestmajor}[1]{\gdef\@interestmajor{#1}}               % 研究方向，关键词组
\newcommand*{\department}[1]{\gdef\@department{#1}}                     % 二级培养单位
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}                     % 导师
\newcommand*{\subsupervisor}[1]{\gdef\@subsupervisor{#1}}               % 副导师
\newcommand*{\studentid}[1]{\gdef\@studentid{#1}}                       % 学号

\newcommand*{\clcnumber}[1]{\gdef\@clcnumber{#1}}                       % 中图分类号 Chinese Library Classification
\newcommand*{\schoolcode}[1]{\gdef\@schoolcode{#1}}                     % 学校代码
\newcommand*{\udc}[1]{\gdef\@udc{#1}}                                   % UDC
\newcommand*{\academiccategory}[1]{\gdef\@academiccategory{#1}}         % 学术类别
% 1. 封面、扉页%
%-----------------------------------------------------------------------------------------------------------%

% 封面 %
% -------------------------------------------------------------%
% 学位论文封面格式分为公开学位论文（学术学位）、公开学位论文（专业学位）、涉密学位论文（学术学位）、涉密学位论文（专业学位）等四种形式（具体见样例1-4）。
% 封面正面上填写论文题名、学科专业（一级学科或专业学位类别）、学科方向或专业领域、作者姓名、指导教师姓名等内容。在书脊上方印“博（或硕）士学位论文”，下方印“中南大学”。
% 涉密学位论文须在封面右上角标注密级、定密日期，由校保密办公室审批、盖章。


% 论文日期
% 采用key-value对的方式来制定存储信息的pgf路径
\pgfkeys{/thesisdate/pgf/.cd, % 定义pgf路径
    year/.store in = \year, % 指定关键词year的存储位置为\year
    month/.store in = \month % 指定关键词month的存储位置为\month
}
% 利用上述的pgf的key-value定制论文日期命令
\newcommand{\thesisdate}[1] {
    \pgfkeys{/thesisdate/pgf/.cd,#1} % 指定使用/thesisdate/pgf/.cd来解释参数，然后在后文能直接使用存储位置来指定解释的内容
    \gdef\@thesisdate{\year{} 年 \month{} 月} % 将构建好的日期存储到宏（\@thesisdate）中
}

% 以下为公开学位论文（学术）的封面内容
% TODO: 
% - 公开学位论文（专业）
% - 涉密学位论文（学术）
% - 涉密学位论文（专业）

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 定义 \makecoverpage 实现封面的重新绘制
% -----------------------------------------------%
\newcommand{\makecoverpage} {
    \thispagestyle{empty}
    {
        \centering
        \linespread{1.5}
        \vspace*{1.5cm}
\ifDoctor
        {\zihao{-2} \bfseries \heiti 博士学位论文 \par} % 小二号黑体
\else
        {\zihao{-2} \bfseries \heiti 硕士学位论文 \par} % 小二号黑体
\fi
        \vspace{2cm} % 两个空行
        {\zihao{2} \bfseries \heiti \@titlecn \par} % 二号黑体
        {\zihao{-2}\bfseries \TimesNewRoman \@titleen \par} % 小二号，timesnewroman
        \vspace{4cm} % 两个空行
        {
            \zihao{3} \bfseries \songti
            \begin{tabular}{ll}
\ifAcademic
                \makebox[6em][s]{一级学科} & \makebox[14em]{\@priormajor} \\
                \makebox[6em][s]{二级学科} & \makebox[14em]{\@minormajor} \\  
\else
      		\makebox[6em][s]{专业学位类别} & \makebox[14em]{\@priormajor} \\
                \makebox[6em][s]{专业领域} & \makebox[14em]{\@minormajor} \\
\fi
  
\ifblindreview
                \makebox[6em][s]{研究方向} & \makebox[14em]{\@interestmajor} \\
                \makebox[6em][s]{学号} & \makebox[14em]{\@studentid} \\
\else
                \makebox[6em][s]{作者姓名} & \makebox[14em]{\@author} \\
                \makebox[6em][s]{指导教师} & \makebox[14em]{\@supervisor} \\
\fi
            \end{tabular}
        }
        \par
        \vspace{4cm} 
        % \vfill
        {
            \centering
            %{\centering \zihao{-3} \songti 中\quad 南\quad 大\quad 学 \par} 
            {\centering \zihao{-3} \songti \@thesisdate \par}
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 扉页 
% -----------------------------------------------%
% 公开、涉密学位论文扉页采用统一格式，一律不带密级栏，分为学术学位、专业学位两种格式（具体见样例5-6）。
% 扉页除包含封面正面的全部内容外，还应包括中图分类号、UDC、学校代码、学位类别（专业学位或学术学位）、副题名（必要时）、研究方向、二级培养单位、副指导教师（必要时）、以及论文答辩日期和答辩委员会主席等内容。
% 中图分类号（http://www.ztflh.com/）和UDC号（《国际十进位分类法》）可在图书馆查阅获得

\newcommand{\maketitlepage} {
    \setlength\parindent{0em}
    {
        \zihao{4} \songti
        \begin{tabular}{l@{}c p{3.8cm} l@{}c}     % @{}去除边框距离，更符合学校模板的下划线紧贴描述文字
            中图分类号  & \underline{\makebox[2cm][c]{\@clcnumber}} & &
            学校代码    & \underline{\makebox[3.3cm][c]{\@schoolcode}} \\ 
            UDC         & \underline{\makebox[2cm][c]{\@udc}} & &
            学位类别    & \underline{\makebox[3.3cm][c]{\@academiccategory}} \\ 
        \end{tabular}
    }

    {
        \centering

        {
            \zihao{-2}
            % 注意centering的使用，只在局部环境中使用。
            \vspace{4ex} % 空行
\ifDoctor
            { \bfseries \heiti 博士学位论文 \par} % 小二号黑体加粗
\else
            { \bfseries \heiti 硕士学位论文 \par} % 小二号黑体加粗
\fi
            \vspace{4ex} % 空行
            {\zihao{2} \bfseries \heiti \@titlecn \par} % 中文标题二号黑体加粗
            { \bfseries \TimesNewRoman \@titleen \par} % 英文标题小二号 Times New Roman，加粗
        }

        \vspace{1.2cm} % 空行

        {
            \zihao{3} \songti 
            \setlength\parindent{2em} % 由于这里填写的内容不对称，完全居中反而不够美观，于是缩进一个汉字的宽度
            \begin{tabular}{ll}
                % 利用\makebox[7em][s]{} 实现两端对齐，即字数不同但左右对齐。
                % 7em表示分散对齐的最长的长度为7个字的长度，参数s表示两端分散对齐。
                \makebox[6em][s]{作者姓名}      &  \makebox[14em]{\@author}        \\[6pt]
\ifAcademic
                \makebox[6em][s]{一级学科}      &  \makebox[14em]{\@priormajor}    \\[6pt]
                \makebox[6em][s]{二级学科}      &  \makebox[14em]{\@minormajor}    \\[6pt]
\else
			\makebox[6em][s]{专业学位类别}      &  \makebox[14em]{\@priormajor}    \\[6pt]
                \makebox[6em][s]{专业领域}      &  \makebox[14em]{\@minormajor}    \\[6pt]
\fi
                \makebox[6em][s]{研究方向}      &  \makebox[14em]{\@interestmajor} \\[6pt]
                \makebox[6em][s]{二级培养单位}  &  \makebox[14em]{\@department}    \\[6pt]
                \makebox[6em][s]{指导教师}      &  \makebox[14em]{\@supervisor}    \\[6pt]
                \makebox[6em][s]{副指导教师}    &  \makebox[14em]{\@subsupervisor} \\[6pt]
            \end{tabular}
        }

        \vspace{1.5cm}

        {
            \zihao{-3} \songti
            \begin{tabular}{l@{}l p{0.5cm} l@{}l}
                论文答辩日期   & \underline{\makebox[3cm][c]{}} & & 
                答辩委员会主席 & \underline{\makebox[3cm][c]{}} \\ 
            \end{tabular}
        }
    }
    \par
    \vspace{3cm}
    {
        \linespread{1.5}
        {\centering \zihao{-3} \songti 中\quad 南\quad 大\quad 学 \par} 
        {\centering \zihao{-3} \songti \@thesisdate \par}
    }
    % 中 南 大 学 （小三号宋体）
    % 年    月 （小三号宋体，填阿拉伯数字）
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. 原创性声明和学位论文版权使用授权书 
% -----------------------------------------------%
% 单独设一页，排在扉页后
% 按模板，标题二号加粗，内容四号，学校要求用下发的模板不能改动，
% 已按要求排版。

\newcommand{\announcement}{
    % 按学校模板这里是华文新魏字体 
    %{~}
    %\vspace{10pt}

    {\centering \zihao{2} \bfseries \huawenxinwei 学位论文原创性声明 \par}

    \vspace{21pt}

    \setlength{\parindent}{2em} % 首行缩进
    {
        \zihao{4} \setlength{\baselineskip}{20pt}
        本人郑重声明，所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了论文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得中南大学或其他教育机构的学位或证书而使用过的材料。与我共同工作的同志对本研究所作的贡献均已在论文中作了明确的说明。

        申请学位论文与资料若有不实之处，本人承担一切相关责任。

    	 \vspace{20pt}

        %\begin{flushright}
            学位论文作者签名：\underline{\makebox[5em][c]{}} ~~
            日期：
            \underline{\makebox[3em][c]{}} 年
            \underline{\makebox[1.5em][c]{}} 月
            \underline{\makebox[1.5em][c]{}} 日
        %\end{flushright}
        
    }

    \vspace{1.2cm}

    {\centering \zihao{2} \bfseries \huawenxinwei 学位论文版权使用授权书 \par}

    \vspace{21pt}

    \setlength{\parindent}{2em} % 首行缩进
    {
        \zihao{4} \setlength{\baselineskip}{20pt}
        本学位论文作者和指导教师完全了解中南大学有关保留、使用学位论文的规定：即学校有权保留并向国家有关部门或机构送交学位论文的复印件和电子版，允许本学位论文被查阅和借阅。本人授权中南大学可以将本学位论文的全部或部分内容编入有关数据库进行检索和公开传播，可以采用复印、缩印或其它手段保存和汇编学位论文。本人同意按《中国优秀博硕士学位论文全文数据库出版章程》规定享受相关权益。本人保证：毕业后以学位论文内容发表的论文作者单位注明中南大学；学位论文电子文档的内容和纸质学位论文的内容相一致。

	   延缓公开论文延缓到期后适用本授权书，涉密论文在解密后适用本授权书。
	   
	   %\vspace{20pt}
	   本学位论文属于：(请在以下相应方框内打“√”）

	   $\square$ 公开

        $\square$ 延缓公开，延缓期限（\underline{\makebox[1.2em][c]{}} 年
            \underline{\makebox[0.8em][c]{}} 月
            \underline{\makebox[0.8em][c]{}} 日至\underline{\makebox[1.2em][c]{}} 年
            \underline{\makebox[0.8em][c]{}} 月
            \underline{\makebox[0.8em][c]{}} 日）



    	  \vspace{20pt}

        \begin{table}[!ht]
            \zihao{4} 
            \begin{tabular*}{\hsize}{@{}@{\extracolsep{\fill}}lll@{}}
            学位论文作者签名：\underline{\makebox[5em][c]{}} & &
            指导教师签名：\underline{\makebox[5em][c]{}} \\
    			\vspace{-8pt}
            \\
            日期：
            \underline{\makebox[3em][c]{}} 年
            \underline{\makebox[1.5em][c]{}} 月
            \underline{\makebox[1.5em][c]{}} 日 & &
            日期：
            \underline{\makebox[3em][c]{}} 年
            \underline{\makebox[1.5em][c]{}} 月
            \underline{\makebox[1.5em][c]{}} 日 \\
		\vspace{-8pt}
 		\\
		（填写阿拉伯数字）
            \end{tabular*}
        \end{table}
    }
}



\RequirePackage{printlen} %调试
%current \texttt{baselineskip}: \printlength{\baselineskip};current \texttt{baselinestretch}: \baselinestretch;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. 中文摘要
% -----------------------------------------------%
% 中文摘要格式具体见样例8，居中打印论文题名（三号黑体），换行顶格编排“摘要”（四号黑体）及摘要内容（四号宋体），每段开头空二格。摘要内容后下换行顶格编排“关键词”和“分类号”（四号黑体）。每篇论文应选取3-8个关键词，每一关键词之间用分号分开，最后一个关键词后不打标点符号。
%
\newcommand*{\keywordscn}[1]{\gdef\@keywordscn{#1}} % 定义中文关键词
\newcommand*{\categorycn}[1]{\gdef\@categorycn{#1}} % 定义中文分类
\newcommand*{\itemcountcn}[1]{\gdef\@itemcountcn{#1}} % 定义中文图表参考文献统计信息
\newenvironment{abstractcn} { % 定义中文摘要环境
    \setlength{\baselineskip}{20pt}         % 基准行间距
    \renewcommand{\baselinestretch}{1.0}   % 几倍行间距
    {~}
    \vspace{-3pt}
    \begin{center} \zihao{3} \bfseries \heiti \@titlecn \end{center}
    \vspace{20pt}
    \noindent{\zihao{4}\bfseries\heiti{摘要：}} % 摘要俩字为四号黑体
    \zihao{4}\songti \noindent % 内容为四号宋体
}
% 显示中文关键词和分类号
{
    \begin{flushleft}
		\vspace{10pt}
        \noindent {\zihao{4} \songti \@itemcountcn} \par % 图表统计信息为四号宋体
		\vspace{40pt}
        \noindent {\zihao{4} \bfseries \heiti 关键词：} {\zihao{4} \songti \@keywordscn} \par % 关键词为四号黑体，内容为四号宋体
        \noindent {\zihao{4} \bfseries \heiti 分类号：} {\zihao{4} \songti \@categorycn} \par % 分类号为四号黑体，内容为四号宋体
    \end{flushleft}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. 英文摘要
% -----------------------------------------------%
% 英文摘要格式和内容与中文摘要相对应，另起一页，具体见样例9。居中打印论文英文题名（三号Times New Roman字体），换行顶格编排“Abstract”及英文摘要内容（四号Times New Roman字体），摘要内容每段开头留四个字符空格。摘要内容后下换行顶格编排“Keywords”和“Classification”。
% 定义英文摘要，字体全部为timesnewroman
\newcommand*{\keywordsen}[1]{\gdef\@keywordsen{#1}} % 英文关键词
\newcommand*{\categoryen}[1]{\gdef\@categoryen{#1}} % 中文分类
%\newcommand*{\itemcounten}[1]{\gdef\@itemcounten{#1}} % 定义英文图表参考文献统计信息
\newenvironment{abstracten} { % 新建英文摘要环境
	\setlength{\baselineskip}{20pt}         % 基准行间距
	\renewcommand{\baselinestretch}{1.0}   % 几倍行间距
	{~}
    \vspace{-3pt}
    \begin{center}\TimesNewRoman \zihao{3} \bfseries \@titleen \end{center}
    \vspace{20pt}
    \noindent {\TimesNewRoman \zihao{4} \bfseries Abstract:} % 摘要俩字为四号黑体
    \TimesNewRoman \zihao{4} \noindent % 内容为四号Times New Roman
}
{
    \begin{flushleft}
%		\vspace{10pt}
%        \noindent {\zihao{4} \songti \@itemcountcn} \par % 图表统计信息为四号宋体
	   \vspace{20pt}
        \noindent {\TimesNewRoman \zihao{4} \bfseries Keywords:~} {\zihao{4} \@keywordsen} \par % 关键词为四号黑体，内容为四号宋体
        \noindent {\TimesNewRoman \zihao{4} \bfseries Classification:~} {\zihao{4} \@categoryen} \par % 分类号为四号黑体，内容为四号宋体
    \end{flushleft}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. 目录 %
% -----------------------------------------------%
% 目录应列出论文的大标题、一级和二级节标题，逐项标明页码（具体见样例10）。各级标题应简明扼要、点出各部分主要内容。学位论文的页码编排为：正文和后置部分用阿拉伯数字编连续码，前置部分用罗马数字单独编连续码（封面除外）。
% “目录”两字居中（三号黑体），下空两行为章、节、小节及其开始页码（靠右顶格）。章、节、小节分别以阶梯式排列：1（第1章）、1.1、1.1.1依次标出。章、节、小节的题名与页码之间用“．．．．．．”连接。除“目录”两字外，其余字体均为小四号宋体。

\setcounter{secnumdepth}{5}
% 定义作为标题的格式
% \titleformat{command}[shape]%定义标题类型和标题样式
%               {format}%定义标题格式
%               {label}%定义标题的标签，即标题的标号等
%               {sep}%定义标题和标号之间的水平距离
%               {before-code}%定义标题前的内容
%               [after-code]%定义标题后的内容
\titleformat{\section}{\zihao{3} \bfseries \heiti}{第{\thesection}章}{1em}{\centering} % 正文章名居中
\titlespacing*{\section} {0pt}{18pt}{12pt}
\preto\section{
	{~} % 
	\vspace{-30pt}%
}
\preto\subsection{\ifnum\value{subsection}=0\addtocontents{toc}{\addvspace{6pt}}\fi}
\titleformat{\subsection}{\zihao{4} \songti}{\thesubsection}{1em}{}
\titlespacing*{\subsection} {0pt}{10pt}{8pt}
\titleformat{\subsubsection}{\zihao{-4} \songti}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection} {0pt}{10pt}{8pt}
\titleformat{\paragraph}{\zihao{-4} \songti}{\theparagraph}{1em}{}
\titlespacing*{\paragraph} {0pt}{10pt}{8pt}
\titleformat{\subparagraph}{\zihao{-4} \songti}{(\arabic{subparagraph})}{1em}{}
\titlespacing*{\subparagraph} {2em}{10pt}{8pt}
% 定义在目录中的格式
% \titlecontents{标题名}
%               [左间距]
%               {标题格式}
%               {标题标志}
%               {无序号标题}
%               {指引线与页码}
%               [下间距]


\titlecontents{section}[0em]{\zihao{-4}\heiti\vspace{6pt}}{\contentspush{第\thecontentslabel\ 章\quad}}{}{\titlerule*[0.5em]{$.$}\contentspage}
\titlecontents{subsection}[1em]{\zihao{-4} \songti}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.5em]{$.$}\contentspage}
\titlecontents{subsubsection}[2em]{\zihao{-4} \songti}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.5em]{$.$}\contentspage}



%\titlecontents{section}[0pt]{\zihao{-4} \heiti}{\contentspush{第\thecontentslabel\ 章\quad}}{}{\titlerule*[0.5em]{$\cdot$}\contentspage}
% \titlecontents{section}
%               [0.75em] % 按样例目录左侧是和前置部分文字左侧对齐的
%               {\zihao{-4} \songti}
%             %   {}
%               {\contentslabel{1em}}
%             % {第\thesection 章}
%               {\hspace*{-1em}}
%               {\titlerule*[0.5pc]{.} ~\contentspage}

%\titlecontents{subsection}[3.2em]{\zihao{-4} \songti}{\contentslabel{2.2em}}{\hspace*{-3.5em}}{\titlerule*[0.5em]{$\cdot$}\contentspage}

%\titlecontents{subsubsection}[6em]{\zihao{-4} \songti}{\contentslabel{3.0em}}{\hspace*{-5em}}{\titlerule*[0.5em]{$\cdot$}\contentspage}

% 6. 符号说明（必要时）%
% ---------------------------------------------------------%
% TODO: 
%
% 如果论文中使用了大量的物理量符号、标志、缩略词、专门计量单位、自定义名词和术语等，应编写成注释说明汇集表，说明论文中所用符号所表示的意义及单位（或量纲）。若上述符号和缩略词使用数量不多，可以不设专门的注释说明汇集表，仅在论文中出现时加以说明。
% “符号说明”四字居中（三号黑体）。

\newenvironment{denotation} { % 定义符号说明环境
    \setlength{\baselineskip}{20pt}         % 基准行间距
    \renewcommand{\baselinestretch}{1.0}   % 几倍行间距
    {~}
    \vspace{-3pt}
    \begin{center} \heiti \bfseries \zihao{3} 符号说明  \end{center}
}


% 7. 论文正文 %
% -------------------------------------------------------%
% 论文正文是主体，主体部分应从另页右页开始，每一章应另起页。一般由序号标题、文字叙述、图、表格和公式等五个部分构成。
% 写作形式可因研究内容的性质不同而变化，一般可包括绪论（或综述）、理论分析、计算方法、实验装置和测试方法、实验结果分析和讨论、研究成果、结论及意义等。
% 该部分由用户编写

% 图表等浮动环境设置 %
% ----------------------------------------------------------%
% TODO %
% 图、表、公式：文中的图、表、附注、公式一律采用阿拉伯数字分章（或连续）编号，如：图2-5，表3-2，公式（5-1）等。
% 图序及图名居中置于图的下方，如果图中含有几个不同部分，应将分图号标注在分图的左上角，并在图解下列出各部分内容。图中的术语、符号、单位等应与正文表述所用一致。
% 表序及表名置于表的上方，表中参数应标明量和单位的符号。表的编排应采用国际通用的三线表。续表均应重复表头，如表需转页接排，随后各页应重复表的编号，其后跟表题（可省略）和“续”置于表上方。
% 图序及图名、表序及表名采用五号楷体字。若图或表中有附注，采用英文小写字母顺序编号，附注写在图或表的下方。公式的编号用括号括起写在右边行末，其间不加虚线。
% 图、表、公式等与正文之间要有一定的行间距。 
% \RequirePackage{caption}
% 默认情况下, \LaTeX{} 要求每页的文字至少占据 20%,否则该页就只单独放置一个浮动环境,
% 而这通常不是我们想要的, 我们将这个要求降低到 5%.
\renewcommand*{\textfraction}{0.05}
% 有时如果多个浮动环境连续放在一起, \LaTeX{}
% 会将它们分在几个不同页，即使它们可在同一页放
% 得下. 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮
% 动环境的最大比例.
 \renewcommand*{\topfraction}{0.9}
 \renewcommand*{\bottomfraction}{0.8}
% 有时\LaTeX{}会把一个浮动环境单独放在一页,
% 我们要求这个环境至少要占据 85% 才能单独放在一页.
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|.
 \renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
 % 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png,.tif}
 % 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}


% 插图格式
% ------------------------------------------------------%
% \captionsetup[subfigure]{labelfont=normalfont,textfont=normalfont,singlelinecheck=off,justification=raggedright}
% singlelinecheck=off 表示即使caption只有一行， justification 也生效
% justification=raggedright 使子图 caption 靠左对齐，而caption的上下位置由\caption标签的位置决定，以此实现了学校要求的子图标签在左上角显示。
% 这部分功能由 subcaption 这个包实现，而这个包不能和 subfigure 同时使用，所以子图的写法也与 subfigure 包的不大一样。 
\captionsetup[subfigure]{singlelinecheck=off,justification=raggedright}

% 图下方描述的楷体字
\DeclareCaptionFont{kai}{\kaishu}
\DeclareCaptionFont{five}{\zihao{5}}
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}
% \renewcommand{\thefigure} {\thesection-\arabic{figure}}

\renewenvironment{figure}
  {
   \setlength\abovecaptionskip{4pt} %% 调整标题与图片距离
   \setlength\belowcaptionskip{0pt} %% 调整标题与下文距离
   \@float{figure}}
  {\end@float}

%\captionsetup[subfigure]{labelfont=bf,labelsep=period,labelformat=mysublabelfmt}
\renewcommand\p@subfigure{\thefigure{-}}
%\renewcommand\thesubfigure{\alph{subfigure})}
%\DeclareCaptionLabelFormat{mysublabelfmt}{\alph{sub\@captype}}

% If desired for table as well:
% \renewcommand\p@subtable{\thetable\,}
% \renewcommand\thesubtable{\alph{subtable})}

\captionsetup[figure]{
	format=plain,      % 标题从第二行开始是否缩进，plain无缩进，hang有缩进
	labelsep=quad,     % 分隔符是一个空格
	font={kai,five},   % 图的字体, 宋体小四
	position=bottom    % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
  
% 表格格式
% ------------------------------------------------------%
\renewcommand{\thetable}{\arabic{section}-\arabic{table}}
% \renewcommand {\thetable} {\thesection-\arabic{table}}
\captionsetup[table]{
	format=plain,      % 标题从第二行开始是否缩进，plain无缩进，hang有缩进
	labelsep=quad,     % 分隔符是一个空格
	font={kai,five},   % 表的字体, 宋体小四
	position=top
}

\renewenvironment{table}
  {%\vspace{0.3cm}  % 调整表格与上文距离
   \setlength\abovecaptionskip{0pt} %% 调整标题与表格距离
   \setlength\belowcaptionskip{10pt} %% 调整标题与下文距离
   \@float{table}}
  {\end@float}

% 算法
% ------------------------------------------------------%
\floatname{algorithm}{算法}
\renewcommand{\thealgorithm}{\arabic{section}-\arabic{algorithm}}
\captionsetup[algorithm]{
	format=plain,      % 标题从第二行开始是否缩进，plain无缩进，hang有缩进
	labelsep=quad,     % 分隔符是一个空格
	font={kai,five},   % 表的字体, 宋体小四
	position=top
}

% 列表环境设置 %
% ------------------------------------------------------------------%
% \RequirePackage{listings}
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

% 表格 %
% ------------------------------------------------------%
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\csu@oldtabular\tabular
\let\csu@endoldtabular\endtabular
\renewenvironment{tabular} {
    \bgroup
	\renewcommand{\arraystretch}{1.38}
    \csu@oldtabular
} {
    \csu@endoldtabular\egroup
}

% 表格字号应比正文小，一般五号/10.5pt，但是暂时没法再cls里设置（不然会影响到封面等tabular环境）
% 所以目前只好在主文件里局部\AtBeginEnvironment

% 数学环境, 定理等设置 %
% -------------------------------------------------------%

\renewtheoremstyle{plain}
{\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\theorem@separator]}
{\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\ ##3\theorem@separator]}
\theorembodyfont{\songti\rmfamily}
\theoremheaderfont{\heiti\rmfamily}
\theoremsymbol{$\blacksquare$}
\setlength{\theorempreskipamount}{0pt}
\setlength{\theorempostskipamount}{-2pt}
\setlength{\parindent}{2em}
\arraycolsep=1.6pt

\newtheorem{theorem}{\indent\bf 定理}[section]
\newtheorem{lemma}[theorem]{\indent\bf 引理}
\newtheorem{proposition}[theorem]{\indent\bf 命题}
\newtheorem{corollary}[theorem]{\indent\bf 推论}
\newtheorem{definition}{\indent\bf 定义}[section]
\newtheorem{example}{\indent\bf 例}[section]
\newtheorem{remark}{\indent\bf 注}[section]
\newtheorem*{proof}{\indent\bf 证明}
\renewcommand{\thetheorem}{\arabic{section}-\arabic{theorem}}
\newenvironment{solution}{\begin{proof}[\indent\bf 解]}{\end{proof}}


% 编号分章节。如需要连续编号，注释\makeatletter下面对应内容即可。

\renewcommand{\theequation}{\arabic{section}-\arabic{equation}}

\makeatletter
\@addtoreset{figure}{section}
\@addtoreset{table}{section}
\@addtoreset{equation}{section}
\@addtoreset{algorithm}{section}
%取消插图索引、表格索引的左缩进
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{2.3em}}% Default: 1.5em/2.3em
\let\l@table\l@figure
\renewcommand\@dotsep{3} % 修改插图索引及表格索引中的点密度
\makeatother

\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
	\hbox{}
	\thispagestyle{fancy}
	\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother \clearpage{\pagestyle{fancy}\cleardoublepage}

% 8. 参考文献 %
% ------------------------------------------------------%
% TODO %
% 文后参考文献只列出作者直接阅读过、在正文中被引用过的文献资料，务必实事求是。参考文献一律列在正文的末尾，不得放在各章之后。人文社科类学位论文中不宜用文后参考文献列出的注释可采用页下注，包括对学位论文中某些关键词句、论点的详细说明。在引用别人的科研成果时，应在引用处加以说明，遵循学术道德规范，严禁论文抄袭、剽窃等学术不端行为。
% 参考文献可以采用顺序编码制组织，也可以按“著者-出版年”制组织。建议按顺序编码制，即按中文引用的顺序将参考文献附于文末。作者姓名写到第三位，余者写“，等”或“，et al.”。“参考文献”四字居中(三号黑体)，空一行左起按顺序依次列出参考文献，将序号置于方括号内(如[1])，用小四号宋体字，所有符号均用半角编排。
% 目前采用bgt7714-2005标准进行文献索引，详见gbt7714-2005.bst.

% 9. 附录（必要时）%
% -------------------------------------------------------%
% TODO %
% 附录中主要列入正文内不便列出的过分冗长的公式推导，供查读方便所需的辅助性数学工具或表格、重复性数据图表、计算程序及说明等。附录依次为附录1，附录2……等，“附录X”三字居中（三号黑体）。附录中的图表公式另编排序号，与正文分开。

% 10. 攻读学位期间主要研究成果 %
% --------------------------------------------------------%
% 分类按时间顺序列出作者在攻读学位期间取得的与学位论文相关的研究成果，含参加的研究项目、获奖情况、专利、专著、发表学术论文（含正式录用论文）等,书写格式参照参考文献格式。“攻读学位期间主要研究成果”字体居中（三号黑体）

% 11. 致谢 %
% 作者对给予指导、各类资助和协助完成研究工作以及提供各种对论文工作有利条件的单位及个人表示感谢。“致谢”二字居中（三号黑体）。

% 篇眉和页码要求 %
% ---------------------------------------------------------%
% 篇眉从正文开始至全文结束，采用宋体五号字左起书写“博（或硕）士学位论文”，靠右写章标题。
% 页码从正文开始至全文结束按阿拉伯数字连续编排，前置部分（如学位论文原创性声明和版权使用授权书、中文摘要、英文摘要、目录、符号说明等）用罗马数字分别单独编排。页码位于页面底端，居中书写。

% \pagestyle{fancy}
% \fancyhf{} % 清空原有格式
% \fancyhf[RH]{\small\leftmark} % 设置所有（奇数和偶数）右侧页眉
% \fancyhf[LH]{中南大学硕士学位论文} % 设置所有（奇数和偶数）左侧页眉
% \fancyhf[CF]{\thepage} % 所有（奇数和偶数）中间页脚

\endinput
