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
generate_rss = true
website_title = "Tensor Analysis"
website_descr = "Introduction to Tensor Analysis"
prepath = "tensoranalysis"
website_url   = "knutam.gitlab.io/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}
\newcommand{\menuparent}[3]{<li class="menu-list-parent {{ispage #1/*}}active{{end}}"><a href="/#1/" class="menu-list-link {{ispage menu1}}active{{end}}">#2</a> <ul class="menu-list-child-list "> #3 </ul>}
\newcommand{\menuchild}[2]{<li class="menu-list-item {{ispage #1}}active{{end}}"><a href="/#1/" class="menu-list-link">#2</a>}

<!-- Tensors -->
\newcommand{\ta}[1]{\boldsymbol{#1}}

<!-- Colors -->
\newcommand{\red}[1]{\textcolor{red}{#1}}
\newcommand{\green}[1]{\textcolor{green}{#1}}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\orange}[1]{\textcolor{orange}{#1}}

<!-- Indices free or dummy -->
\newcommand{\freeind}[1]{\green{#1}}
\newcommand{\dummyind}[1]{\blue{#1}}