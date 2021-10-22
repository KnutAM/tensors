+++
title = "Tensor rotation and coordinate transformation"
+++

# Tensor rotation and coordinate transformation
On this page, we will see that rotating tensors and transforming between different base vectors are very similar operations. From linear algebra, we are familiar with the rotation of vectors by using a rotation matrix, e.g. 
\begin{align}
Q = \begin{bmatrix} \cos(\alpha) & \sin(\alpha) & 0 \\ -\sin(\alpha) & \cos(\alpha) & 0 \\ 0 & 0 & 1\end{bmatrix}
\end{align}
to rotate a vector around the $z$-axis. Similarly, we can introduce the [rotation tensor](/Theory/SpecialTensors/#proper_orthogonal_rotation_tensors), $\ts{Q}$, with the property that $\tst{Q}=\tsi{Q}$. 

\collaps{If we take the matrix product $QQ\Trans$ for the above, we see that our standard rotation matrix also fullfills this}{
\begin{align}
    &\begin{bmatrix} \cos(\alpha) & \sin(\alpha) & 0 \\ -\sin(\alpha) & \cos(\alpha) & 0 \\ 0 & 0 & 1\end{bmatrix} \begin{bmatrix} \cos(\alpha) & -\sin(\alpha) & 0 \\ \sin(\alpha) & \cos(\alpha) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} \cos^2(\alpha) + \sin^2(\alpha) & \sin(\alpha)\cos(\alpha)-\sin(\alpha)\cos(\alpha) & 0 \\ \sin(\alpha)\cos(\alpha)-\sin(\alpha)\cos(\alpha) & \cos^2(\alpha) + \sin^2(\alpha) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{bmatrix}
\end{align}
}

<!-- The rotation tensor will rotate a vector, but will not change its length. -->

![alt](/assets/Rotation.svg)

To be completed...

## Tensor rotation


## Change of coordinates