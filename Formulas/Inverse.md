+++
title = "Inversion formulas"
+++
# Inverse

## 2nd order tensors
### Calculation
The inverse of 2nd order tensors $\ts{a}$ in 2d and 3d are
\begin{align}
\text{2d: }[a_{ij}]^{-1} &= \frac{1}{\det(\ts{a})} \begin{bmatrix} a_{22} & -a_{12} \\ -a_{21} & a_{11}    \end{bmatrix} \\
\text{3d: }[a_{ij}]^{-1} &= 
\frac{1}{\det(\ts{a})} \begin{bmatrix}
a_{22} a_{33} - a_{23} a_{32} & a_{13} a_{32} - a_{12} a_{33} & a_{12} a_{23} - a_{13} a_{22} \\
a_{23} a_{31} - a_{21} a_{33} & a_{11} a_{33} - a_{13} a_{31} & a_{13} a_{21} - a_{11} a_{23} \\
a_{21} a_{32} - a_{22} a_{31} & a_{12} a_{31} - a_{11} a_{32} & a_{11} a_{22} - a_{12} a_{21} \end{bmatrix}
\end{align}
as for 2x2 and 3x3 matrices. 

### Properties
* $\ts{a}\tsi{a} = \ts{I}$
* $\ts{a}:\tsti{a} = 3$
* $\left[\ts{a}\ts{b}\right]^{-1} = \tsi{b}\tsi{a}$
* $\left[k\ts{a}\right]^{-1} = \frac{1}{k}\tsi{a}$
* $\left[\ts{a} + \ts{b}\right]^{-1}\quad$ has no simple formula

### Differentiation
\begin{align}
\pdiff{\tsi{a}}{\ts{a}} = -\tsi{a}\opu\tsti{a}
\end{align}


## 4th order tensors
Use the Voigt matrix representation and linear algebra rules. However, some special cases exist, e.g.

* $\tf{A}:\tfi{A}=\tf{I}$
* $\left[\tf{A}:\tf{B}\right]^{-1} = \tfi{B}:\tfi{A}$
* $\left[k\tf{A}\right]^{-1} = \frac{1}{k}\tfi{A}$
* $\left[\ts{a}\opu\ts{b}\right]^{-1} = \tsi{a}\opu\tsi{b}$