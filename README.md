# 欢迎使用中南大学研究生学位论文LaTex模版（博士和硕士）

## Prior work on CSU thesis template

本示例模板是应用中南大学研究生学位论文（非官方）LaTeX 文档类 CSUthesis 的一个完整实现。演示了排版中常用的例子，包括公式、表格、算法、参考文献等。 用户可以参考或者直接基于此示例文档撰写论文。

请注意 CSUthesis 目前仅支持 XeTeX 引擎，字符编码仅支持 UTF-8。

非常感谢郭大侠提供基础[中南大学学位论文LaTex模板](https://github.com/CSGrandeur/CSU-Thesis-LaTeX-Template)，其依据[《中南大学研究生学位论文撰写规范》中大研字【2016】166号](http://gra.its.csu.edu.cn/yjsy/pygl/wjtzxq54858_3_6.html)编写,后续的修改也是再次基础上。
## Motivation
目的是创建一个符合中南大学研究生学位论文（博士）撰写规范的LaTeX模板，解决学位论文撰写时格式调整的痛点。

已有珠玉在前，我们之所以还要重新造轮子，主要是参考了2020年4月2号学校下发的[《中南大学研究生学位论文撰写规范》中大研字【2020】30号](http://oa.its.csu.edu.cn/Home/ReleaseMainText/909CD53BF50943CD97B83C352032FEA4)，重新修改了页面布局、字体类型和大小、标题内容，以期做到与 Word 模板尽可能的相似。主要修改如下：
+ 修订多个子图Caption居中问题；
+ 依据专家意见调整成果与致谢部分间距，并增加目录中的点密度；
+ 按照图书馆最新要求（2020年12月份），去除目录中红色边框；
+ 增加页眉信息：中南大学博士论文与右侧的章节名保持一致，以及无需号章节名保持一致;
+ 增加中英文摘要至目录，并保持与章节名昨对其;
+ 参考文献完全依照国标 gbt7714-2005，修正了部分 Bug，提供了新的引用命令；
+ 按照最新版本要求，在声明扉页前后各增加一页空白页，保证装订单独成页；
+ 章节标题居中，并改成‘第1章’样式；
+ 目录中，将原章节标题换成‘第几章’样式，字体按要求加粗；
+ 中文摘要到目录结束用罗马数字编写页码，小五号Times New Roman,居中；
+ 增加插图索引和表格索引；
+ 所有的章节题目和中英文摘要均按要求修改字体和间距；
+ 更新攻读学位期间主要的研究成果;
+ 更新并测试盲审版本;
+ 按文件要求修订攻读学位期间主要的研究成果和致谢;
+ 按文件要求修订学位论文原创性声明;
+ 根据需要调整合适的算法包;

### To Do
+ 将参考文献gbt7714-2005改为gbt7714-2015;

## 编译环境和工具

### 编译环境
由于 CTeX 宏集的行为会受编译方式影响，比如不同编译方式下 CTeX 宏集底层的中文支持方式也会不同。LaTeX 和 pdfLaTeX 为 CJK 宏包，XeLaTeX 为 xeCJK 宏包，LuaLaTeX 为 LuaTeX-ja 宏包；使用 XeLaTeX 和 LuaLaTeX 编译时，CTeX 宏集使用 UTF-8 编码，LaTeX 和 pdfLaTeX 时使用 GBK 编码。最终的排版效果因不同编译方式而已。

**本模板唯一推荐使用的是 XeLaTeX**，可以获得与 Word 模板100%接近的效果。发行版为 [TeXLive](http://tug.org/texlive/)，支持GNU/Linux, macOS, 和Windows操作系统，按需下载。这里暂不推荐其他发行版，毕竟按照 [L 叔](http://liam0205.me/)的名言

> 选择 TeX Live，选择简单的人生；
>
> 选择 MiKTeX，选择麻烦的人生；
>
> 选择 CTeX 套装，选择崩溃的人生。

### 写作工具

推荐使用2种常用写作工具：
+ [**TeXstudio**](http://texstudio.sourceforge.net/)：TeXstudio is an integrated writing environment for creating LaTeX documents. Our goal is to make writing LaTeX as easy and comfortable as possible.（Windows上面支持最完善，macOS也支持）
+ **Sublime+LaTex**：[Windows部署指南](https://blog.csdn.net/qazxswed807/article/details/51234834)和[macOS部署指南](https://www.readern.com/sublime-text-latex-chinese-under-mac.html)。
### 文献管理工具
如果你使用LaTex写作，强烈建议你使用[JabRef](https://www.jabref.org/)管理你的文献。

[JabRef安装及使用指南。](https://blog.csdn.net/weixin_44191286/article/details/85698921)

## 主要内容

![cover](images/csulg.jpg)

1. 封面（最新版的封面改版，胶封时处理）、扉页；
2. 学位论文原创性声明和版权使用授权书；
3. 中文摘要；
4. 英文摘要；
5. 目录；
6. 符号说明（必要时）；
7. 论文正文；
8. 参考文献；
9. 附录（必要时）；
10. 攻读博（硕）士学位期间主要研究成果；
11. 致谢。

## 版本状况

完全支持新版本撰写规范，支持普通学术学位博士论文。

其他涉密、定向等可能需要修改封面的情况，需要自行修改`CSUthesis.cls`文件。

硕士版本也可按需修改`CSUthesis.cls`文件。

以后版本会增加支持各类学位的配置文件（如果我有空的话）。

## 文件介绍

### `CSUthesis.cls`

样式文件，如果是标准的普通学术型博士，不需要管这个文件。

其他如涉密、定向之类的，目前本版本没有设计特定的设置功能，需要修改该文件。

对LaTeX有所了解的同学，也可按需修改这个文件。如果这个文件的样式设计有什么bug，欢迎在issue里提出。

### 参考文献
关于参考文献的设置如下，使用了 natbib 宏包来定制参考文献，除了常用的 `\ cite{}` 命令来提供 full size 的参考文献引用，还提供了 `\citess{}` 命令用于提供上标（右上角）时候的引用（ss 是 superscript 的缩写）。最后一句代码用于调节参考文献条目之间距离。

```latex
\usepackage[square,numbers,sort&compress]{natbib}
\newcommand{\citess}[1]{\textsuperscript{\cite{#1}}}
%\setlength{\bibsep}{1pt plus 0.3ex}
```
由于暂时未发现GBT7714-2005和GBT7714-2015的重大区别，由于时间关系，暂时依然使用GBT7714-2005.bst文献规则。
参考文献的字体、大小和样式风格，可以在 .tex 文件中下面代码里调节。gbt7714-2005.bst 文件基于南京大学计算机科学与技术系胡海星博士的 [GBT7714-2005-BibTeX-Style 项目](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)，在此基础上稍做了一点修改，使得英文人名从全部字母大写变为只有首字母大写。

参考文献的行距、字体和大小可以在下列代码中修改

```latex
\begin{spacing}{1.0}  
  \zihao{5} \songti   
  \bibliographystyle{gbt7714-2005}
  \bibliography{ref}
\end{spacing}
```

### `content`目录

所有论文的编辑内容在这里。

`info.tex`：论文的各种信息，标题姓名学院之类的。添加盲审格式输出，根据需求注释/保留 `\blindreviewtrue`和 `\blindreviewfalse`，输出盲审送审版本和正式版本。

`abstactcn.tex`和`abstracten.tex`：顾名思义。

`content.tex`：从绪论到总结的全部正文内容。`\cite`的时候可能因为tex文件与主文件分离，LaTeX环境配置不到位，会有找不到bib的提示（Texlive+sublime会这样），没关系，照常插入需要的bibkey即可。另外，如遇到参考文献没有及时更新时，请将编译后的`.bbl`文件删除，然后重新编译即可。

`additional.tex`：成果、致谢、附录之类的。


### `csuthesis_main.tex`

论文主文件，正常情况下不用修改这个文件，以这个文件编译论文即可。

在content目录提供的页面不足以保证所需内容时，可以修改主文件，引入其他自定义content文件。

### `images`目录

放图片，模板已经配置了相对路径，所以在文中插图片时，直接用images目录下的相对路径即可，比如`images/csu.png`，在正文中插入只需要`csu.png`。

## 编译

`Linux`
```bash
# 单次编译
make
# 持续集成
make pvc
```
或者
请使用`xelatex`，对`csuthesis_main.tex`文件进行编译。
Windows下可以使用`TexMaker`,`TexStudio`等IDE，选中`xelatex`编译器进行编译。
使用高级文本编辑器，如sublime等，否则可能因为ANSI、UTF-8等编码格式问题编译失败。

本模板同时已经在macOS（10.14）进行正常运行。

## 反馈与贡献
由于新版本的撰写指南刚下发，难免有些地方错误，请及时反馈！

本模版是由诸多感兴趣的同学一起维护的开源项目，我们非常欢迎问题反馈和新的贡献者！




