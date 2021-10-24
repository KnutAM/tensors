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
To be completed, discuss: 
* Engineering strain
* Mandel notation