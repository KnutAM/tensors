<!--
-->
+++
title = "unknown"
author = "Knut Andreas Meyer"
mintoclevel = 2

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
website_title = "Tensors"
website_descr = "Introduction to Tensor Analysis"
prepath = "tensors/"
website_url   = "https://knutam.github.io/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
<!-- ENVIRONMENTS (not inside math-mode) -->
\newcommand{\todo}[1]{}
<!-- Uncomment to show todo-notes
\newcommand{\todo}[1]{
    @@todo
        **TODO:**\\
        #1
    @@
}
-->
\newcommand{\definition}[1]{
    @@definition
        **Definition:**\\
        #1
    @@
}

\newcommand{\collaps}[2]{
~~~<button type="button" class="collapsible">~~~ #1 ~~~</button><div class="collapsiblecontent">~~~ #2 ~~~</div>~~~
}

\newcommand{\smallvspace}{~~~<p></p>~~~}

\newenvironment{align*}{@@no-number \begin{align}}{\end{align} @@}

<!-- MATH (only inside math-mode) -->
\newcommand{\norm}[1]{\left\vert\left\vert#1\right\vert\right\vert}
\newcommand{\abs}[1]{\left\vert#1\right\vert}
\newcommand{\mat}[1]{\boldsymbol{#1}} <!-- matrix -->
\newcommand{\subscr}[1]{_{ \mathrm{#1} } }  <!-- Subscript -->
\newcommand{\supscr}[1]{^{ \mathrm{#1} } }  <!-- Superscript -->

<!-- Differentiation -->
\newcommand{\dif}{\mathrm{d}}
\newcommand{\diff}[2]{\frac{\dif #1}{\dif #2}}
\newcommand{\pdiff}[2]{\frac{\partial #1}{\partial #2}}

<!-- Set -->
\newcommand{\set}[1]{\mathbb{#1}}
\newcommand{\REAL}{\set{R}}

<!-- Tensors -->
\newcommand{\onebase}[1]{\tv{e}_{#1}}
\newcommand{\twobase}[2]{\tv{e}_{#1}\otimes\tv{e}_{#2}}
\newcommand{\fourbase}[4]{\tv{e}_{#1}\otimes\tv{e}_{#2}\otimes\tv{e}_{#3}\otimes\tv{e}_{#4}}
\newcommand{\basei}{\onebase{i}}
\newcommand{\baseij}{\twobase{i}{j}}
\newcommand{\baseijkl}{\fourbase{i}{j}{k}{l}}

\newcommand{\ta}[1]{\textcolor{red}{\mathrm{DEPRECIATED}}\boldsymbol{#1}}
\newcommand{\tv}[1]{\underline{\boldsymbol{#1}}}
\newcommand{\ts}[1]{\boldsymbol{#1}}
\newcommand{\tf}[1]{\textbf{\textsf{#1}}}
\newcommand{\tfind}[2]{\textsf{#1}_{#2}}

<!-- Voigt representation -->
\newcommand{\tsv}[1]{\underline{#1}}
\newcommand{\tfv}[1]{\underline{\underline{\mathsf{#1}}}}
\newcommand{\tsm}[1]{\tsv{#1}}
\newcommand{\tfm}[1]{\tfv{#1}}

\newcommand{\trans}{^{\mathrm{T}}}
\newcommand{\Trans}{^{\mathrm{T}}}
\newcommand{\tst}[1]{\ts{#1}\trans}
\newcommand{\tft}[1]{\tf{#1}\Trans}

\newcommand{\tsi}[1]{\ts{#1}^{-1}}
\newcommand{\tfi}[1]{\tf{#1}^{-1}}

<!-- Special products -->
\newcommand{\opu}{\overline{\otimes}}
\newcommand{\opl}{\underline{\otimes}}

<!-- Operations -->
\newcommand{\tr}{\mathrm{tr}}
\newcommand{\det}{\mathrm{det}}

<!-- Decorations -->
\newcommand{\dev}{^{ \mathrm{dev} } }
\newcommand{\sph}{^{ \mathrm{sph} } }

<!-- Colors -->
\newcommand{\red}[1]{\textcolor{red}{#1}}
\newcommand{\green}[1]{\textcolor{green}{#1}}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\orange}[1]{\textcolor{orange}{#1}}

<!-- Indices free or dummy -->
\newcommand{\freeind}[1]{\green{#1}}
\newcommand{\dummyind}[1]{\blue{#1}}