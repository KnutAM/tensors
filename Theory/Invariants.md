+++
title = "Tensor invariants"
+++

# Tensor invariants
\collaps{Tensor invariants are scalar values calculated from tensors that have the special property that they are unaffected by rotations of the tensor(s): they are invariant to rotations.}{One important application for this is modeling of material behavior. For example, the von Mises effective stress, $\sqrt{(2/3)\ts{\sigma}\dev:\ts{\sigma}\dev}$ is an invariant, because the double contraction with itself, and the trace (used to get the deviatoric part), is an invariant.}

## Basic invariants
The basic invariants of a 2nd order tensor are
* $I^{(1)}_{\ts{a}} = \tr(\ts{a})$
* $I^{(2)}_{\ts{a}} = \tr(\ts{a}^2) = \ts{a}:\tst{a}$ <!-- \delta_{ij} a_{ik} a_{kj} = a_{ik} a_{ki} -->
* $I^{(3)}_{\ts{a}} = \tr(\ts{a}^3)$

\collaps{This can be verified by applying a rotation $\ts{R}\ts{a}\tst{R}$ and using that $\tst{R}=\tsi{R}$.}{
    \begin{align*}
    \tr(\ts{R}\ts{a}\tst{R}) &= R_{ij} a_{jk} R\trans_{ki} =  R\trans_{ki} R_{ij} a_{jk} = \delta_{kj} a_{jk} = a_{jj} = \tr(\ts{a})\\
    (\ts{R}\ts{a}\tst{R}):(\ts{R}\tst{a}\tst{R}) &= R_{ij} a_{jk} R\trans_{kl} R_{im} a\trans_{mn} R\trans_{nl}\\
     &= R\trans_{mi} R_{ij} R\trans_{kl} R_{ln} a_{jk} a\trans_{mn} = a_{mn} a\trans_{mn} = \ts{a}:\tst{a}
    \end{align*}
}


## Eigenvalues
Another set of invariants for a 2nd order tensor are its eigenvalues, $\lambda_i$. The eigenvalues and corresponding eigenvectors are defined by
\begin{align}
\ts{a}\tv{v}_i = \lambda_i \tv{v}_i
\end{align}
The non-zero vectors $\tv{v}_i$ that fulfill this equation are called eigenvectors of $\ts{a}$, and the corresponding values $\lambda_i$ are called eigenvalues.

As for matrices, we can determine the eigenvalues by solving the characterstic equation 
\begin{align}
\det\left(\ts{a}-\lambda \ts{I}\right) = 0
\end{align}

Given the eigenvalues, $\lambda_i$, each corresponding eigenvector $\tv{v}_i$ can be obtained by solving
\begin{align}
\left(\ts{a}-\lambda_i \ts{I}\right)\tv{v}_i = \tv{0}
\end{align}
for a nonzero $\tv{v}_i$. As we have equality with zero, the magnitude of $\tv{v}_i$ is arbitrary. In practice, it is common to normalize the eigenvectors. 

### Spectral decomposition
Above, we introduced the right eigenvectors $\tv{v}$, such that $\ts{a}\tv{v}=\lambda\tv{v}$. It is also possible to introduce the left eigenvectors, $\tv{w}$, such that $\tv{w}\ts{a}=\lambda\tv{w}$. This leads to the equivalent characteristic equation, $\det\left(\tst{a}-\lambda\ts{I}\right) = \det\left(\ts{a}-\lambda\ts{I}\right) = 0$. Hence, the eigenvalues are the same. However, the eigenvectors are not always the same. If $\ts{a}$ is symmetric, then they are equal. 

If we have distinct eigenvalues, $\lambda_i \neq \lambda_j$ if $i\neq j$, then we have
\begin{align}
\tv{w}_i \ts{a} \tv{v}_j &= \tv{w}_i \cdot (\lambda_j \tv{v}_j) = \lambda_j \tv{w}_i\cdot\tv{v}_j\\
&= (\lambda_i \tv{w}_i) \cdot \tv{v}_j = \lambda_i \tv{w}_i \cdot \tv{v}_j
\end{align}
Subtracting the first line from the second, we obtain
\begin{align}
\left(\lambda_i - \lambda_j\right) \tv{w}_i \cdot \tv{v}_j = 0\\
\tv{w}_i \cdot \tv{v}_j &= 0 \quad i\neq j
\end{align}
showing that for distinct eigenvalues, $\lambda_i\neq\lambda_j$, $\tv{w}_i$ and $\tv{v}_j$ are orthogonal. 

If the tensor $\ts{a}$ is symmetric, the right and left eigenvectors are equal. In that case, this implies that its eigenvectors are orthogonal. A symmetric tensor have 6 degrees of freedom (independent components). Let's write $\ts{a}$ as 
\begin{align}
\ts{a} = \lambda_{ij} \tv{v}_i \otimes \tv{v}_j
\end{align}
where $\lambda_{ij}$ are just the coefficients for the eigenvector basis. If we check $\ts{a}\ts{v}_k$, we obtain
\begin{align}
\ts{a}\ts{v}_k &= \lambda_{ij} \tv{v}_i \otimes \tv{v}_j \cdot \tv{v}_k = \lambda_k \tv{v}_k \quad (\text{No sum on }k) \label{eq:lambdaij}\\
&= \lambda_{ik} \tv{v}_i= \lambda_k \tv{v}_k 
\end{align}
showing that
\begin{align}
\lambda_{ij} = \left\lbrace\begin{matrix} \lambda_i & i=j \\ 0 & i\neq j\end{matrix}\right.
\end{align}

The conditions in Equation \eqref{eq:lambdaij} give 9 conditions as for each $k$ there are 3 equations. However, we already restricted to symmetric tensors, from which we obtained that the eigenvectors are orthogonal. Therefore, only 6 of the conditions are linearly independent. Still, this suffices to fully specify our tensor, and we see that if we know the eigenvalues, $\lambda_i$ and normalized eigenvectors, $\tv{v}_i$, of a symmetric tensor $\ts{a}$, we can express it as
\begin{align}
\ts{a} = \sum_{i=1}^3 \lambda_i \tv{v}_i \otimes \tv{v}_i\quad (\text{No Einstein summation convention on }i)
\end{align}
This is the **spectral decomposition** of $\ts{a}$

## Invariants tensors which are not 2nd order
Invariants are not only restricted to 2nd order tensors. For example, the length of a vector is an invariant. Actually, the [norm](/Theory/TensorOperations#norm) of any tensor is an invariant. 

## Invariants of multiple tensors (combined invariants)
It is also possible to define combined invariants that depend on multiple tensors. These remain invariant as long as all involved tensors are transformed the same way. A common example is the angle between two tensors, $\ts{a}:\ts{b}/(\norm{\ts{a}}\norm{\ts{b}})$. From this expression, we can also easily see that the double contraction $\ts{a}:\ts{b}$ is invariant.
