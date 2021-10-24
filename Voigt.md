+++
title = "Voigt representation"
+++
# Voigt representation
A common way to write out the components of higher order tensors is the Voigt notation. For unsymmetric tensors this is rather straight forward, however, the reduction to fewer elements for symmetric tensors are a frequent cause of confusion and bugs in computer programs. However, let's start with the general case of unsymmetric tensors. 

## Unsymmetric tensors
Here, we represent a 2nd order tensor, $\ts{a}$, as a 9-component vector, $\tsv{a}$, and a 4th order tensor, $\tf{A}$, as a 9-by-9 matrix, $\tfv{A}$. It is also commonly used in computer implementations, mostly because linear algebra libraries are not written to deal with arrays of more than 2 dimensions.

The order of the off-diagonal components varies between different softwares, but can for example be such that
\begin{align}
\tsv{b} &= [b_{11}, b_{22}, b_{12}, b_{21}]\quad \text{(2d)}\\
\tsv{a} &= [a_{11}, a_{22}, a_{33}, a_{12}, a_{13}, a_{23}, a_{21}, a_{31}, a_{32}]\quad \text{(3d)}
\end{align}

With this chosen, a 4th order tensor $\tf{B}$ in 2d can be described as
\begin{align}
\tfv{B} = \begin{bmatrix}
\tfind{B}{1111} & \tfind{B}{1122} & \tfind{B}{1112} & \tfind{B}{1121} \\
\tfind{B}{2211} & \tfind{B}{2222} & \tfind{B}{2212} & \tfind{B}{2221} \\
\tfind{B}{1211} & \tfind{B}{1222} & \tfind{B}{1212} & \tfind{B}{1221} \\
\tfind{B}{2111} & \tfind{B}{2122} & \tfind{B}{2112} & \tfind{B}{2121}
\end{bmatrix}
\end{align}

We can then see that the matrix multiplication $\tfv{B}\,\tsv{b}$ is equivalent to the double contraction $\tf{B}:\ts{b}$. This property is a reason why the Voigt representation is often used in computer implementations. 

## Symmetric tensors
Even if we have a symmetric tensor, we can still represent it using the 9-component representation discussed above. However, in many applications symmetric tensors arise, and then a 6-component representation is used for convenience. But if we use a 6-component representation, a key feature of the Voigt-representation is lost: The double contraction is not equivalent to the matrix/vector dot product. We need to compensate for this somehow, and 3 possibilities are discussed below.

### Modify the double contraction operation
The first option require that we take the off-diagonal entries twice when doing the double contraction. This implies that we cannot use the standard linear algebra libraries, and is therefore not so convenient for computer implementations. 

### Engineering strain
To use engineering strans, where the shear components are doubled, is very common in continuum mechanics. Often, this way is implicitly assumed when discussing the Voigt representation for symmetric tensors in continuum mechanics. It works well when considering the stress-strain relationship, and also for calculating the power $\ts{\sigma}:\dot{\ts{\epsilon}}$. However, for example the norm of the stress, $\ts{\sigma}:\ts{\sigma}$ does not work automatically. Even if this representations have its drawbacks, it is commonly used and it is important to be aware of it. 

### Mandel notation
A final solution is to use the so-called Mandel representation. It is not so commonly used in older codes, but it offers the huge advantage that all the contractions give the correct result. Also, we treat all tensors equally, and do not differentiate wether a tensor represents e.g. stresses or strains. If we assume that the above tensors $\ts{b}$ and $\tf{B}$ are symmetric, we can write their Mandel representation as 
\begin{align}
\tsm{b} &= [b_{11}, b_{22}, \sqrt{2}b_{12}] \\
\tfm{B} &= \begin{bmatrix}
\tfind{B}{1111} & \tfind{B}{1122} & \sqrt{2}\tfind{B}{1112} \\
\tfind{B}{2211} & \tfind{B}{2222} & \sqrt{2}\tfind{B}{2212} \\
\sqrt{2}\tfind{B}{1211} & \sqrt{2}\tfind{B}{1222} & 2\tfind{B}{1212}
\end{bmatrix}
\end{align}

\collaps{We can then verify that $\ts{b}:\ts{b}=\tsm{b}\cdot\tsm{b}$ and that $\tf{B}:\ts{b}$ is equivalent to $\tfm{B}\cdot\tsm{b}$}{Starting with $\ts{b}:\ts{b}$, we have
\begin{align}
\ts{b}:\ts{b} = b_{ij}b_{ij} &= b_{11}^2 + b_{22}^2 + 2 b_{12}^2\\
\tsm{b}\cdot\tsm{b} &= b_{11}^2 + b_{22}^2 + 2 b_{12}^2
\end{align}

Similarly, 
\begin{align}
\tf{B}:\ts{b} &= \tfind{B}{ijkl}b_{kl} \\&= \begin{bmatrix} 
\tfind{B}{1111}b_{11} + \tfind{B}{1122}b_{22} + 2\tfind{B}{1112}b_{12} & \tfind{B}{1211}b_{11} + \tfind{B}{1222}b_{22} + 2\tfind{B}{1212}b_{12} \\
\tfind{B}{1211}b_{11} + \tfind{B}{1222}b_{22} + 2\tfind{B}{1212}b_{12} & \tfind{B}{2211}b_{11} + \tfind{B}{2222}b_{11} + 2\tfind{B}{2212}b_{12} 
\end{bmatrix} \\
\tfm{B}\cdot\tsm{b} &= \begin{bmatrix} 
\tfind{B}{1111}b_{11} + \tfind{B}{1122}b_{22} + 2\tfind{B}{1112}b_{12} \\
\tfind{B}{2211}b_{11} + \tfind{B}{2222}b_{11} + 2\tfind{B}{2212}b_{12} \\
\sqrt{2}(\tfind{B}{1211}b_{11} + \tfind{B}{1222}b_{22} + 2\tfind{B}{1212}b_{12})
\end{bmatrix}
\end{align}
where the last answer is the Mandel representation of the first result, which  
}