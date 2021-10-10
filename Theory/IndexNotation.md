+++
title = "Index notation"
+++

# Index notation
Using the so-called index notation allows us to express complicated sums and products in a compact form. This is very useful for performing derivations involving tensor expressions, but can also be used in other situations. However, it can take a bit of practice to become comfortable with the notation before using it efficiently. Still, you probably have already used index notation without thinking about it: Consider the vector $\tv{v}$, if you want to write out its components, you might write
\begin{align}
\tv{v} = \left[v_1, v_2, v_3\right] \label{eq:symbol1}
\end{align}
Each component is then $v_j$, where $j$ can be 1, 2, or 3. Normally when working with tensors, we will only consider up to the 3 spatial dimensions but from index notation we can consider an aribtrary number of **dimensions**, e.g. $j\in\lbrace 1, 2, \cdots, N\rbrace$. In addition to increasing the number of dimensions, $N$, we can also consider objects of higher **order**. For example, if we have a matrix $\tv{M}$ with dimension 3, we can write this
\begin{align}
\mat{M} = \begin{bmatrix} 
M_{11} & M_{12} & M_{13} \\
M_{21} & M_{22} & M_{23} \\
M_{31} & M_{32} & M_{33}
\end{bmatrix}
\end{align}
Each component is then $M_{ij}$, where each row is given by $i\in\lbrace1,2,3\rbrace$ and each column by $j\in\lbrace1,2,3\rbrace$. As for the dimension, we can also consider an arbitrary order, e.g. a 4th order object, $a_{ijkl}$.

**Definition:** The **dimension** $N$ of an index $i$ is how many integers it represents, i.e. $i\in{1,2,\cdots,N}$

**Definition:** The **order** of a symbol, expressed in index notation, is the number of indices, $M$, i.e. $a_{i_1\,i_2\,\cdots\,i_M}$.

## Einstein's summation convention
The compactness of the index notation comes from the "Einstein summation convention", [Einstein (1916)](https://doi.org/10.1002/andp.19163540702).
If we would like to represent the matrix-vector multiplication $\tv{u}=\tv{M}\tv{v}$ above using our index notation, this becomes
\begin{align}
u_i = \sum_{j=1}^3 M_{ij} v_j = M_{i1} v_1 + M_{i2} v_2 + M_{i3} v_3
\end{align}
With the Einstein summation convention, we do not have to write the summation symbol, and can simply write
\begin{align}
u_i = M_{ij}v_j
\end{align}

*How do we know that this implies the sum?* \\
We see that the index $\dummyind{j}$ is repeated in $M_{i\dummyind{j}}$ and $v_{\dummyind{j}}$. This repeated index in the same term, imply a summation over each $\dummyind{j}$. 

*Now you might ask, why not with $\freeind{i}$, it is repeated in $u_{\freeind{i}}$ and $M_{\freeind{i}\dummyind{j}}$?* \\
The difference is that $u_{\freeind{i}}$ and $M_{\freeind{i}\dummyind{j}}$ are not in the same term. We call $\freeind{i}$ a "free index", while $\dummyind{j}$ is called a "dummy index".

## Index juggling
Consider that we have a few index objects representing vectors and matrices, e.g. $A_{ij}$ for $\tv{A}$, $B_{ij}$  for $\tv{B}$, $c_i$ for $\tv{c}$, $d_i$ for $\tv{d}$, and $e_i$ for $\tv{e}$. If we want to write the expression $\tv{e}=\tv{A}\tv{B}\tv{c} + \tv{d}^T\tv{B}$ we have to change the indices to match the expression, and write e.g. 
\begin{align}
e_{\freeind{i}} = A_{\freeind{i}\dummyind{j}} B_{\dummyind{jk}} c_{\dummyind{k}} + d_{\dummyind{j}} B_{\dummyind{j}\freeind{i}}
\end{align}
We are free to change indices in this expression, if we adhere to the following rules

1. If we change a free index, we must change that index in all terms and we cannot change to an index that already exists in any of the terms
2. If we change a dummy index, we must change that dummy index for both objects in that term

For example, we can change the free index $\freeind{i}$ to $\freeind{n}$ in $e_{\freeind{i}}$, if we also change it in the other terms, i.e. 
\begin{align}
e_{\freeind{n}} = A_{\freeind{n}\dummyind{j}} B_{\dummyind{jk}} c_{\dummyind{k}} + d_{\dummyind{j}} B_{\dummyind{j}\freeind{n}}
\end{align}

Or we can change the dummy index $\dummyind{j}$ to $\dummyind{m}$ in the last term, even if we don't change it in the first term (on the right hand side),
\begin{align}
e_{\freeind{i}} = A_{\freeind{i}\dummyind{j}} B_{\dummyind{jk}} c_{\dummyind{k}} + d_{\dummyind{m}} B_{\dummyind{m}\freeind{i}}
\end{align}

## Kronecker delta
One common special symbol for index notation is the "Kronecker delta", $\delta_{ij}$. It is defined by
\begin{align}
\delta_{ij} = \left\lbrace \begin{matrix} 1 & i=j \\ 0 & i\neq j \end{matrix} \right.
\end{align}
This can be though of as an identity operator, because $A_{ij} \delta_{jk} = A_{jk}$, as can be seen if we expand the expression (assume dimension 2 for brevity)
\begin{align}
k=1: \quad A_{ij} \delta_{j1} &= A_{i1}\delta_{11} + A_{i2}\delta_{21} =  A_{i1}, \quad \delta_{11}=1, \delta_{12}=0\\
k=2: \quad A_{ij} \delta_{j2} &= A_{i1}\delta_{12} + A_{i2}\delta_{22} = A_{i2}, \quad \delta_{21}=0, \delta_{22}=1
\end{align}

## Levi-Civita symbol
The "Levi-Civita symbol" may also be denoted the "permutation symbol". While it can be defined in arbitrary order, we will only consider it as a 3rd order symbol which is defined as
\begin{align}
\varepsilon_{ijk} = \left\lbrace \begin{matrix} 
\phantom{-}1 & \text{if }(i,j,k) \text{is (1,2,3), (2,3,1), or (3,1,2)} \\
-1 & \text{if }(i,j,k) \text{is (3,2,1), (2,1,3), or (3,2,1)} \\
\phantom{-}0 & \text{if any two indices are equal}
\end{matrix}\right.
\end{align}
The following illustration from Wikipedia illustrates the sign convention, 

~~~
<a title="Maschen, CC0, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:Permutation_indices_3d_numerical.svg"><img width="50px" alt="Permutation indices 3d numerical" src="https://upload.wikimedia.org/wikipedia/commons/5/50/Permutation_indices_3d_numerical.svg"></a>
~~~


