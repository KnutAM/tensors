+++
title = "Transposition formulas"
+++
# Transpose

## 2nd order tensors
### Calculation
* $a_{ij}\trans = a_{ji}$ (If $\ts{a}=a_{ij}\baseij$, then $\tst{a}=a_{ij}\trans\baseij$)
* $\ts{a}\sym = 0.5\left[\ts{a}+\tst{a}\right]$
* $\ts{a}\skw = \ts{a} - \ts{a}\sym$

### Properties
* $\left[\tv{u}\otimes\tv{v}\right]\trans = \tv{v}\otimes\tv{u}$
* $\left[\ts{a}\ts{b}\right]\trans = \tst{b}\tst{a}$
* $\left[\ts{a} + \ts{b}\right]\trans = \tst{a} + \tst{b}$
* $\left[\tst{a}\right]\sym = \ts{a}\sym$
* $\left[\tst{a}\right]\skw = -\ts{a}\skw$

### Differentiation
\begin{align*}
\pdiff{\tst{a}}{\ts{a}} = \ts{I}\opl\ts{I}
\end{align*}

## 4th order tensors (major transpose)
### Calculation

* $\tfind{A}{ijkl}\Trans = \tfind{A}{klij}$
* $\tf{A}\sym = 0.5\left[\tf{A}+\tft{A}\right]$
* $\tf{A}\skw = \tf{A} - \tf{A}\sym$

### Properties
* $\left[\ts{a}\otimes\ts{b}\right]\Trans = \ts{b}\otimes\ts{a}$
* $\left[\tf{A}:\tf{B}\right]\Trans = \tft{B}:\tft{A}$
* $\left[\tf{A} + \tf{B}\right]\Trans = \tft{A} + \tft{B}$
* $\left[\tft{A}\right]\sym = \tf{A}\sym$
* $\left[\tft{A}\right]\skw = -\tf{A}\skw$