+++
title = "Tensor rotation and coordinate transformation"
+++

# Tensor rotation and coordinate transformation
On this page, we will see that rotating tensors and transforming between different base vectors are very similar operations. From linear algebra, we are familiar with the rotation of vectors by using a rotation matrix, e.g. 
\begin{align}
R = \begin{bmatrix} \cos(\beta) & -\sin(\beta) & 0 \\ \sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix}
\end{align}
to rotate a vector around the $z$-axis. Similarly, we can introduce the [rotation tensor](/Theory/SpecialTensors/#proper_orthogonal_rotation_tensors), $\ts{R}=R_{ij}\baseij$, with the property that $\tst{R}=\tsi{R}$. 

\collaps{If we take the matrix product $RR\trans$ for the above, we see that our standard rotation matrix also fullfills this}{
\begin{align}
    &\begin{bmatrix} \cos(\beta) & -\sin(\beta) & 0 \\ \sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \begin{bmatrix} \cos(\beta) & \sin(\beta) & 0 \\ -\sin(\beta) & \cos(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} \cos^2(\beta) + \sin^2(\beta) & \sin(\beta)\cos(\beta)-\sin(\beta)\cos(\beta) & 0 \\ \sin(\beta)\cos(\beta)-\sin(\beta)\cos(\beta) & \cos^2(\beta) + \sin^2(\beta) & 0 \\ 0 & 0 & 1\end{bmatrix} \\
    &= \begin{bmatrix} 1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{bmatrix}
\end{align}
}

The rotation tensor rotates a vector, but will not change its length. To rotate a vector $\tv{v}$, we can either do $\ts{R}\tv{v}$ or $\tv{v}\ts{R}$. Both will rotate the vector, but in opposite directions, which we can see when we consider the index notation for these expressions: $R_{ij} v_j$ and $v_j R_{ji} = R^{-1}_{ij} v_j$. If we take resulting vector in the last expression and left multiply with $\ts{R}$ as in the first expression, we get $R_{ki}R^{-1}_{ij} v_j = \delta_{kj} v_j = v_k$. Hence, we rotated back to the original vector, showing that the first rotation was in the opposite direction. By convention, we define the rotation tensor such that we should right-multiply to get the desired rotation, i.e. $\ts{R}\tv{v}$. 

## Change of coordinates
![alt](/assets/Rotation.svg)
The left illustration has two coordinate systems, $\tv{e}_i$ and $\tv{g}_i$. The vector $\tv{v}$ is then 
\begin{align}
\tv{v}=v_i\supscr{e} \basei = v_i\supscr{g} \tv{g}_i
\end{align}
where $v_i\supscr{e}$ and $v_i\supscr{g}$ are coordinates in the two coordinate systems. 

\collaps{Assuming that we know $v_i^\mathrm{e}$, we can then calculate $v_i^\mathrm{g}$, by rotating the vector $\tv{v}$ clockwise $\beta$ (i.e. by multiplying by $R_{ij}$ which is right-multiplying due to the index order). This is the opposite of the rotation of the coordinate system $\tv{g}_i$ relative $\basei$! Therefore, we introduce the coordinate transformation coefficients $Q\supscr{eg}_{ij}=R^{-1}_{ij}=R\trans_{ij}$}{To demonstrate this, consider a vector $\tv{v}$ with length 1. Then
    \begin{align}
    v_1\supscr{e} &= \cos(\alpha\subscr{e}),\,v_2\supscr{e}=\sin(\alpha\subscr{e}),\,v_3\supscr{e}=0\\
    v_i\supscr{g} &= Q\supscr{eg}_{ik}v_k\supscr{e} \\
    v_1\supscr{g} &=  \cos(\alpha\subscr{e})\cos(\beta) + \sin(\alpha\subscr{e})\sin(\beta) = \cos(\alpha\subscr{e}-\beta) = \cos(\alpha\subscr{g})\\
    v_2\supscr{g} &= -\cos(\alpha\subscr{e})\sin(\beta) + \sin(\alpha\subscr{e})\cos(\beta) = \sin(\alpha\subscr{e}-\beta) = \sin(\alpha\subscr{g})\\
    v_3\supscr{g} &= v_3\supscr{e} = 0
    \end{align}
}

However, note that $\ts{Q}\neq\tst{R}$. This is because, more precicely, the transformation tensor $\ts{Q}$ between the coordinate systems $\basei$ and $\tv{g}_i$ is
\begin{align}
\ts{Q} = Q_{ij}\supscr{eg} \tv{g}_i \otimes \tv{e}_j = (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes \tv{e}_j
\end{align}
Note that $\ts{Q}$ is described in a special way - its bases are mixed. This is not a property of the tensor itself, but just a convenient way to describe it. 

Hence, the transformation of the vector $\tv{v}$ from $\tv{e}_i$ bases to $\tv{g}_i$ bases becomes
\begin{align}
\ts{Q}\tv{v} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_i \otimes \tv{e}_j) \cdot (v_k\supscr{e} \tv{e}_k) \\
&= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \delta_{jk} v_k\supscr{e} \\
&= ((\tv{g}_i \cdot \tv{e}_j) v_j\supscr{e}) \tv{g}_i \\
v_i\supscr{g} &= (\tv{g}_i \cdot \tv{e}_j) v_j\supscr{e}
\end{align}

\collaps{But hold on! Earlier, we said that a vector is independent of its coordinate system. This implies that $\ts{Q}\tv{v}=\tv{v}$ and if so, then $\ts{Q}=\ts{I}$! Expand to see why...}{So let's try to do the same transformation but starting from $\tv{v}$ described in the $\tv{g}_i$ coordinate system.
\begin{align}
\ts{Q}\tv{v} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_i \otimes \tv{e}_j) \cdot (v_k\supscr{g} \tv{g}_k) \\
&= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i (\tv{e}_j \cdot \tv{g}_k) v_k\supscr{g} \\
v_i\supscr{g} &= (\tv{g}_i \cdot \tv{e}_j) (\tv{e}_j \cdot \tv{g}_k) v_k\supscr{e}
\end{align}
Since $Q\supscr{eg}_{ij}=\tv{g}_i \cdot \tv{e}_j$ and $Q\supscr{ge}_{jk}=(Q\supscr{eg}_{jk})^{-1}=\tv{e}_j \cdot \tv{g}_k$, then $(\tv{g}_i \cdot \tv{e}_j) (\tv{e}_j \cdot \tv{g}_k)=\delta_{ik}$, and we have $v_i\supscr{g}=\delta_{ik}v_k\supscr{g}=v_i\supscr{g}$. So now we showed that $\ts{Q}\tv{v}=\tv{v}$. But this would, as mentioned, imply that $\ts{Q}=\ts{I}$. To check this, let's transform the tensor $\ts{Q}$, expressed in mixed bases, into the same bases
\begin{align}
\ts{Q} &= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes (\ts{Q}\tv{e}_j)\quad\quad\\
 &= (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes ( \tv{g}_k \otimes \tv{e}_l\cdot\tv{e}_j) \\
 &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_k \cdot \tv{e}_l) \delta_{lj} \tv{g}_i \otimes \tv{g}_k \\
 &= (\tv{g}_i \cdot \tv{e}_j) (\tv{g}_k \cdot \tv{e}_j) \tv{g}_i \otimes \tv{g}_k \\
 &= Q\supscr{eg}_{ij} Q\supscr{ge}_{jk}\tv{g}_i \otimes \tv{g}_k = \delta_{ik}\tv{g}_i \otimes \tv{g}_k = \ts{I}
\end{align}
where in the first equality we used that $\tv{e}_j = \ts{Q}\tv{e}_j$. }

### Higher order tensors
\collaps{If we would like to change to coordinates for higher order tensor, we simply transform each base vector by right multiplying by $\ts{Q}$. }{Transforming the bases of the 2nd and 4th order tensors $\ts{a}$ and $\tf{A}$, becomes
\begin{align}
a_{ij} (\ts{Q}\tv{e}_i)\otimes(\ts{Q}\tv{e}_j) = \ts{Q}\ts{a}\tst{Q} = (\ts{Q}\opu\ts{Q}):\ts{a} \\
\tfind{A}{ijkl} (\ts{Q}\tv{e}_i)\otimes(\ts{Q}\tv{e}_j)\otimes(\ts{Q}\tv{e}_k)\otimes(\ts{Q}\tv{e}_l) = (\ts{Q}\opu\ts{Q}):\tf{A}:(\tst{Q}\opu\tst{Q})
\end{align}
When actually doing the calculations however, we work in index notation. So to transform from $a_{ij}\supscr{e}$ and $\tfind{A}{ijkl}\supscr{e}$ to $a_{ij}\supscr{g}$ and $\tfind{A}{ijkl}\supscr{g}$, we have
\begin{align}
a_{ij}\supscr{g} &= Q_{ik} Q_{jl} a_{ij}\supscr{e} \\
\tfind{A}{ijkl}\supscr{g} &= Q_{im} Q_{jn}\tfind{A}{mnop}\supscr{e} Q_{ko} Q_{lp} = Q_{im} Q_{jn}\tfind{A}{mnop}\supscr{e} Q\trans_{ok} Q\trans_{pl} 
\end{align}
I.e. we "right multiply" each index by the transformation coefficients $Q_{ij}=\tv{g}_i \cdot \tv{e}_j$
}

## Tensor rotation
Above, we have found the following interesting facts about coordinate transformation tensor and rotation tensor.
* The rotation tensor is $\ts{R}=R_{ij} \baseij$ and is such that $\tst{R}=\tsi{R}$. 
* The coordinate transformation tensor is $\ts{Q}=Q\supscr{eg}_{ij} \tv{g}_i \otimes \tv{e}_j = (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes \tv{e}_j = \ts{I}$
* If we would like to transform from basis system $\tv{e}_i$ to $\tv{g}_i = \ts{R}\tv{e}_i$, then $Q\supscr{eg}_{ij} = R\trans_{ij}$

\collaps{We have already established that to rotate a vector $\tv{v}$, we can contract from the left by the rotation matrix $\ts{R}$, i.e. $\ts{R}\tv{v}$. As for the the coordinate transformations, to rotate higher order tensors, we just need to contract each basis with the rotation matrix.}{Rotating a 2nd order tensor, $\ts{a}$, becomes
\begin{align}
a_{ij} (\ts{R}\tv{e}_i)\otimes(\ts{R}\tv{e}_j) &= a_{ij} (R_{kl}\twobase{k}{l}\cdot\basei) \otimes (R_{mn}\twobase{m}{n}\cdot\onebase{j}) \\
&= a_{ij} R_{kl} R_{mn} (\onebase{k} \delta_{li}) \otimes (\delta_{nj} \onebase{m})\\
&= R_{ki} a_{ij} R_{mj} \twobase{k}{m} = R_{ki} a_{ij} R\trans_{jm} \twobase{k}{m}
\end{align}
Hence, if we just consider coefficients via index expressions, we have the rotated coefficients $a'_{km}$ as $a'_{km} = R_{ki} a_{ij} R\trans_{jm}$.

Similarly, rotating a 4th order tensor, $\tf{A}$, becomes
\begin{align}
\tfind{A}{ijkl} (\ts{R}\tv{e}_i)\otimes(\ts{R}\tv{e}_j)\otimes(\ts{R}\tv{e}_k)\otimes(\ts{R}\tv{e}_l) = R_{mi} R_{nj} \tfind{A}{ijkl} R\trans_{ko} R\trans_{lp} \fourbase{m}{n}{o}{p}
\end{align}
and if we just consider coefficients via index expressions, we have the rotated coefficients $\tfind{A}{mnop}'$ as $\tfind{A}{mnop}' = R_{mi} R_{nj} \tfind{A}{ijkl} R\trans_{ko} R\trans_{lp}$. 
}