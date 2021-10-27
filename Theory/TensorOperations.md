+++
title = "Tensor operations"
mintoclevel = 2
maxtoclevel = 2
+++

# Tensor operations
The previous [section](/Theory/TensorAlgebra) introduced operations between tensors. In this section, we will focus on operations on single tensors. We will use $a$ for a scalar (0th order tensor), $\tv{u}$ for a vector (1st order tensor), $\ts{a}$ for a 2nd order tensor, and $\tf{A}$ for a 4th order tensor. The following operations are discussed:

\toc


\label{transposition}
## Transposition, "$\bullet\Trans$"
For zero and first order tensors, is not defined or has no effect (depending on your point of view). I.e. $a\trans=a$ and $\tv{u}\trans=\tv{u}$.

### Second-order tensors
\definition{The transpose, $\tst{a}$, of a 2nd order tensor, $\ts{a}=a_{ij}\baseij$, is defined as\\ $\tst{a}=a_{ij}\twobase{j}{i}=a_{ji}\baseij$}
When we take the transpose of a 2nd order tensor, the basis change order, but the indices remain the same. If both basis systems, $\onebase{i}$ and $\onebase{j}$ are the same, transposition is equivalent to to switching the indices on $a_{ij}$ to $a_{ji}$. When doing this in index notation, we implicitly assume that the basis vector order remains unchanged. 

\collaps{Using the index notation, we can derive some important rules for transposed tensor expressions}{
    \begin{align}
    \left[\ts{a}+\ts{b}\right]\trans &= \left[a_{ij}\baseij + b_{ij}\baseij\right]\trans = \left[[a_{ij}+b_{ij}]\baseij\right]\trans  \\
    &= (a_{ij}+b_{ij}) \twobase{j}{i} = a_{ij} \twobase{j}{i} + b_{ij} \twobase{j}{i} \\
    &= \tst{a} + \tst{b}
    \end{align}
    \begin{align}
    \left[\ts{a}\ts{b}\right]\trans &= \left[a_{ij}\baseij \cdot b_{kl}\twobase{k}{l}\right]\trans \\
    &= a_{ij} b_{kl} \left[\tv{e}_j\cdot\tv{e}_k\right] [\twobase{i}{l}]\trans, \quad \tv{e}_j\cdot\tv{e}_k=\delta_{jk}=\tv{e}_k\cdot\tv{e}_j \\
    &= a_{ij} b_{kl} \left[\tv{e}_j\cdot\tv{e}_k\right] \twobase{l}{i} = b_{kl} \twobase{l}{k} \cdot a_{ij} \twobase{j}{i} \\
    &= \tst{b}\tst{a}
    \end{align}
}

We can also write the transposition directly on the index symbol, $a\trans_{ij}$. For a tensor with equal basis this is the same as transposition of the tensor. However, it might also be used in expressions when the indices are not contracted with basis vectors. Consider the expression $a_{ij} b_i = a\trans_{ji} b_i$, where in the first we contract $b$ with $a$'s first index, and in the second we contract with $a\trans$'s second index (the same as $a$'s first index). Hence, we have that $a_{ij} = a\trans_{ji}$

### Fourth order tensors
\definition{The major transpose, $\tft{A}$, of a 2nd order tensor, $\tf{A}=\tfind{A}{ijkl}\baseijkl$, is defined as\\ $\tft{A}=\tfind{A}{ijkl}\fourbase{k}{l}{i}{j}=\tfind{A}{klij}\baseijkl$}
Also when taking the *major* transpose of a 4th order tensor, the basis change order. The first two bases are exchanged for the two last, but their internal order remains. Also here, the indices remain the same. Having four equal basis systems, transposition is equivalent to switching the indices $\tfind{A}{ij\orange{kl}}$ to $\tfind{A}{\orange{kl}ij}$, implicitly assuming the same basis vector order. 

Usually, the tranpose of a 4th order tensor implies the major transpose. However, we could also consider minor transposition, i.e. going from $\tfind{A}{ijkl}$ to $\tfind{A}{jikl}$, $\tfind{A}{ijlk}$, or $\tfind{A}{jilk}$. These would all be *minor* transpositions, but have no clear symbol such as $\bullet\Trans$. 

\label{trace}
## Trace, $\tr(\bullet)$
The trace is an operation normally associated with second order tensors, and is the sum of the diagonal entries
\definition{The trace of a second order tensor, $\ts{a}=a_{ij}\baseij$, is defined as $\tr(\ts{a})=a_{ii}$}

The trace measures the volumetric part of a tensor. For example, the pressure, $p$, is defined as $p=-\tr(\ts{\sigma})/3$ where $\ts{\sigma}$ is the stress tensor. 

\label{norm}
## Norm, "$\norm{\bullet}$"
The norm of a tensor gives a scalar measure of its magnitude.
\definition{The norm of a tensor, $\bm{b}=b_{i_1 i_2 \cdots i_N}\twobase{i_1}{i_2}\otimes\cdots\otimes\onebase{i_N}$, of arbitrary order $N$, is \\$\norm{\bm{b}}=\sqrt{b_{i_1 i_2 \cdots i_N} b_{i_1 i_2 \cdots i_N}}$\\
in an orthonormal basis system}
If we break this down to common orders, we have
* Scalar (0th order): $\norm{a}=\sqrt{a^2}=\abs{a}$ (*absolute value*)
* Vector (1st order): $\norm{\tv{u}}=\sqrt{\tv{u}\cdot\tv{u}}=\sqrt{u_i u_i}$ (*eucledian length of vector*)
* 2nd order tensor: $\norm{\ts{a}}=\sqrt{\ts{a}:\ts{a}}=\sqrt{a_{ij} a_{ij}}$
* 4th order tensor: $\norm{\tf{A}}=\sqrt{\tf{A}::\tf{A}}=\sqrt{\tfind{A}{ijkl}\tfind{A}{ijkl}}$

\label{inverse}
## Inverse, "$\bullet^{-1}$"
The inverse is only defined for even order tensors. Instead of defining it generally, we will here only consider 0th, 2nd and 4th order tensors

### Scalars
The inverse, $a^{-1}$, of a scalar, $a$, is such that $a a^{-1} = 1$. In this case, we can solve it directly as $a^{-1} = 1/a$.

### 2nd order tensors
\definition{The inverse, $\tsi{a}$, of a 2nd order tensor, $\ts{a}=a_{ij}\baseij$, is defined by\\
$\ts{a}\tsi{a}=\ts{I}=\delta_{ij}\baseij$}

Here the 2nd order identity tensor, $\ts{I}$ was used, see [Special Tensors](/Theory/SpecialTensors). 

\collaps{Similar to the transposition there are relations for taking the inverse of a dot product between two tensors}{
    If we have the tensor $\ts{c}=\ts{a}\ts{b}$, then we check if $\tsi{c}=\tsi{b}\tsi{a}$ is a solution
    \begin{align}
    \ts{I}=\ts{c}\tsi{c}=\ts{a}\ts{b}\tsi{b}\tsi{a}=\ts{a}\ts{I}\tsi{a}=\ts{a}\tsi{a}=\ts{I}
    \end{align}
    So yes! We see that $\tsi{c}=\tsi{b}\tsi{a}$ is actually true. Note the similarity to the transposition. 
    
    However, there is no easy relation for $\tsi{c}$ if $\ts{c}=\ts{a}+\ts{b}$!
}

### 4th order tensors
\definition{The inverse, $\tfi{A}$, of a 4th order tensor, $\tf{A}=\tfind{A}{ijkl}\baseijkl$, is defined by\\
$\tf{A}:\tfi{A}=\ts{I}\opu\ts{I}=\delta_{ik}\delta_{jl}\baseijkl$}

\todo{Should this be moved to computations?}
Algorithms for determining the inverse of a 4th order tensors are virtually non-existent. However, we may represent the entities in a 4th order tensor as a matrix using the [Voigt notation](/Theory/TensorComputation#voigt_notation), $\tfv{A}$. In this notation, the double contraction reduces to a regular matrix-matrix product: $\tf{A}:\tf{A}=\tfv{A}\cdot\tfv{A}$. Hence, to calculate the inverse of a 4th order tensor, it is usually necessary to convert to the Voigt format, calculate the inverse, and then convert back. 

\label{determinant}
## Determinant, "$\det(\bullet)$"
As for the inverse, the determinant is only defined for even order tensors. For scalars, it is trivial such that $\det(a)=a$. Similar to the inverse of 4th order tensors, it is normally not computed on a fourth order tensor but rather on the Voigt representation of this tensor. For a 2nd order tensor, it is straight forward to calculate as the determinant of a matrix by filling the matrix by the tensor coefficients, e.g. in 2d:

\begin{align}
\ts{a}=a_{ij} \baseij, \quad \left[a_{ij}\right] = \begin{bmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{bmatrix} \\
\det(\ts{a}) = a_{11} a_{22} - a_{21} a_{12}
\end{align}

\label{exponentiation}
## Exponentiation, "$\bullet^n$"
Sometimes, it is convenient to write a series of dot products between the same tensor. We can do this as we would for scalars, by using exponentiation:

\definition{A 2nd order tensor, $\ts{a}$, to the power of $n$, is defined as\\
$\ts{a}^n = \underset{1}{\ts{a}}\cdot\underset{2}{\ts{a}}\cdot\underset{3}{\ts{a}}\cdots\underset{n}{\ts{a}}$ \\ where the numbers just number the tensors.}

Similarly, we can define this for a fourth order tensor.
\definition{A 4th order tensor, $\tf{A}$, to the power of $n$, is defined as\\
$\tf{A}^n = \underset{1}{\tf{A}}:\underset{2}{\tf{A}}:\underset{3}{\tf{A}}:\cdots:\underset{n}{\tf{A}}$ \\ where the numbers just number the tensors.}

\label{exponential}
## Exponential, "$\exp(\bullet)$"
The exponential function have some very nice properties for differentiation. It also occurs frequently as a solution to differential equations. It is therefore interesting to define the exponential of a tensor. For a 2nd order tensor, we can define the exponential as
\definition{The exponential, $\exp$, of a 2nd order tensor, $\ts{a}$, is defined by\\
$\exp(\ts{a}) = \sum_{n=0}^{\infty}\frac{\ts{a}^n}{n!}, \quad \ts{a}^0 = \ts{I}$ }