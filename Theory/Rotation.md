+++
title = "Tensor rotation and coordinate transformation"
+++

# Tensor rotation and coordinate transformation
On this page, we will see that rotating tensors and transforming between different base vectors are very similar operations. From linear algebra, we are familiar with the rotation of vectors by using a rotation matrix, e.g. 
\begin{align}
R = \begin{bmatrix} \cos(\beta) & -\sin(\beta) & 0 \\ \sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix}
\end{align}
to rotate a vector around the $z$-axis. Similarly, we can introduce the [rotation tensor](/Theory/SpecialTensors/#proper_orthogonal_rotation_tensors), $\ts{R}$, with the property that $\tst{R}=\tsi{R}$. 

\collaps{If we take the matrix product $RR\Trans$ for the above, we see that our standard rotation matrix also fullfills this}{
\begin{align}
    &\begin{bmatrix} \cos(\beta) & -\sin(\beta) & 0 \\ \sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \begin{bmatrix} \cos(\beta) & \sin(\beta) & 0 \\ -\sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} \cos^2(\beta) + \sin^2(\beta) & \sin(\beta)\cos(\beta)-\sin(\beta)\cos(\beta) & 0 \\ \sin(\beta)\cos(\beta)-\sin(\beta)\cos(\beta) & \cos^2(\beta) + \sin^2(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{bmatrix}
\end{align}
}

The rotation tensor rotates a vector, but will not change its length. To rotate a vector $\tv{v}$, we can either do $\ts{R}\tv{v}$ or $\tv{v}\ts{R}$. Both will rotate the vector, but in opposite directions, which we can see when we consider the index notation for these expressions: $R_{ij} v_j$ and $v_j R_{ji} = R^{-1}_{ij} v_j$. If we take resulting vector in the last expression and left multiply with $\ts{R}$ as in the first expression, we get $R_{ki}Q^{-1}_{ij} v_j = \delta_{kj} v_j = v_k$. Hence, we rotated back to the original vector, showing that the first rotation was in the opposite direction. By convention, we define the rotation tensor such that we should right-multiply to get the desired rotation, i.e. $\ts{R}\tv{v}$. 

## Change of coordinates
![alt](/assets/Rotation.svg)
The left illustration has two coordinate systems, $\tv{e}_i$ and $\tv{g}_i$. The vector $\tv{v}$ is then 
\begin{align}
\tv{v}=v_i\supscr{e} \basei = v_i\supscr{g} \tv{g}_i
\end{align}
where $v_i\supscr{e}$ and $v_i\supscr{g}$ are coordinates in the two coordinate systems. 

\collaps{Assuming that we know $v_i^\mathrm{e}$, we can then calculate $v_i^\mathrm{g}$, by rotating the vector $\tv{v}$ clockwise $\beta$ (i.e. by left multiplying by $\tst{R}$ or equivalently right multiplying by $\ts{R}$). Note that this is the opposite of the rotation of the coordinate system $\tv{g}_i$ relative $\basei$! Therefore, we introduce the coordinate transformation matrix $\ts{Q}=\tsi{R}=\tst{R}$}{To demonstrate this, consider a vector $\tv{v}$ with length 1. Then
    \begin{align}
    v_i\supscr{e} &= \cos(\alpha\subscr{e}),\,\sin(\alpha\subscr{e})\\
    v_i\supscr{g} &= v_k\supscr{e}Q_{ki} \\
    v_1\supscr{g} &=  \cos(\alpha\subscr{e})\cos(\beta) + \sin(\alpha\subscr{e})\sin(\beta) = \cos(\alpha\subscr{e}-\beta) = \cos(\alpha\subscr{g})\\
    v_2\supscr{g} &= -\cos(\alpha\subscr{e})\sin(\beta) + \sin(\alpha\subscr{e})\cos(\beta) = \sin(\alpha\subscr{e}-\beta) = \sin(\alpha\subscr{g})
    \end{align}
}

More precicely, the transformation tensor $\ts{Q}$ between the coordinate systems $\basei$ and $\tv{g}_i$ is
\begin{align}
\ts{Q} = (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes \tv{e}_j
\end{align}
Note that $\ts{Q}$ is described in a special way - its bases are mixed. This is not a property of the tensor itself, but just a convenient way to describe it. For example, if we would like to rotate a tensor by using $\ts{R}=\tst{Q}$, it makes more sense to describe it with the same bases on both "legs".

Hence, the transformation of the vector $\tv{v}$ from $\tv{e}_i$ bases to $\tv{g}_i$ bases becomes
\begin{align}
\ts{Q}\tv{v} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_i \otimes \tv{e}_j) \cdot (v_k\supscr{e} \tv{e}_k) \\
&= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \delta_{jk} v_k\supscr{e} \\
&= ((\tv{g}_i \cdot \tv{e}_j) v_j\supscr{e}) \tv{g}_i \\
v_i\supscr{g} &= (\tv{g}_i \cdot \tv{e}_j) v_j\supscr{e}
\end{align}

\collaps{But hold on! Earlier, we said that a vector is independent of its coordinate system. This implies that $\ts{Q}\tv{v}=\tv{v}$!}{So let's try to do the same but starting from $\tv{v}$ described in the $\tv{g}_i$ coordinate system.
\begin{align}
\ts{Q}\tv{v} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_i \otimes \tv{e}_j) \cdot (v_k\supscr{g} \tv{g}_k) \\
&= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i (\tv{e}_j \cdot \tv{g}_k) v_k\supscr{g} \\
v_i\supscr{g} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{e}_j \cdot \tv{g}_k) v_k\supscr{e}
\end{align}
Since $Q_{ij}=\tv{g}_i \cdot \tv{e}_j$ and $Q^{-1}_{jk}=Q\Trans_{jk}=\tv{e}_j \cdot \tv{e}_k$, then $(\tv{g}_i \cdot \tv{e}_j) (\tv{e}_j \cdot \tv{g}_k)=\delta_{ik}$, and we have $v_i\supscr{g}=\delta_{ik}v_k\supscr{g}$, which is correct.}

### Higher order tensors
\collaps{If we would like to change to coordinates for higher order tensor, we simply transform each base vector by right multiplying by $\ts{Q}$. }{Transforming the bases of the 2nd and 4th order tensors $\ts{a}$ and $\tf{A}$, becomes
\begin{align}
a_{ij} (\ts{Q}\tv{e}_i)\otimes(\ts{Q}\tv{e}_j) = \ts{Q}\ts{a}\tst{Q} = (\ts{Q}\opu\ts{Q}):\ts{a} \\
\tfind{A}{ijkl} (\ts{Q}\tv{e}_i)\otimes(\ts{Q}\tv{e}_j)\otimes(\ts{Q}\tv{e}_k)\otimes(\ts{Q}\tv{e}_l) = (\ts{Q}\opu\ts{Q}):\tf{A}:(\tst{Q}\opu\tst{Q})
\end{align}
}

## Tensor rotation
To be completed ...