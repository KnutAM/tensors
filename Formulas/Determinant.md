+++
title = "Determinant formulas"
+++
# Determinant

## 2nd order tensors
### Calculation
The determinants for 2nd order tensors $\ts{a}$ in 2d and 3d are
\begin{align}
\text{2d: }\det(\ts{a}) &= a_{11}a_{22} - a_{21}a_{12} \\
\text{3d: }\det(\ts{a}) &= 
a_{11}\left[a_{22}a_{33} - a_{32}a_{23}\right] -
a_{12}\left[a_{21}a_{33} - a_{31}a_{23}\right] + 
a_{13}\left[a_{21}a_{32} - a_{31}a_{22}\right]
\end{align}
as for 2x2 and 3x3 matrices. 

### Properties
* $\det(\tst{a}) = \det(\ts{a})$
* $\det(\ts{a}\ts{b}) = \det(\ts{a})\det(\ts{b})$
* $\det(\tsi{a}) = 1/\det(\ts{a})$
* $\det(k\ts{a}) = k^n \det(\ts{a})$ (where $n$ is the dimension)

### Differentiation
\begin{align}
\diff{}{\ts{a}}\left[\det(\ts{a})\right] = \det(\ts{a})\tsi{a}
\end{align}


## 4th order tensors
Refer to the Voigt matrix representation and linear algebra. 