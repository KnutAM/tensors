+++
title = "Rotation formulas"
+++

## Rotation tensor
A rotation tensor $\ts{R}$ has the property that $\tst{R}=\tsi{R}$, and rotates a vector $\tv{v}$ by right-multiplication: $\tv{v}' = \ts{R}\tv{v}$.

## Coordinate transformation tensor
Given the basis system $\basei$ and a rotated basis system $\tv{g}_i = \ts{R}\basei$, where $\ts{R}=R_{ij}\baseij$, the coordinate transformation tensor from $\basei$ to $\tv{g}_i$ is
\begin{align*}
\ts{Q} = (\tv{g}_i \cdot \tv{e}_j) \tv{g}_i \otimes \tv{e}_j = R_{ij}\trans \tv{g}_i \otimes \tv{e}_j = \ts{I}
\end{align*}

## How to rotate / change basis system
Single contraction from the left of each base vector with the rotation/coordinate transformation tensor. In practice, left contraction with each free index. 

## Differentiation
Consider a rotation as a function of time, i.e. $\ts{R}(t)$. Then
\begin{align*}
\diff{\tst{R}\ts{R}}{t} = \ts{0} &= \diff{\tst{R}}{t}\ts{R} + \tst{R}\diff{\ts{R}}{t} \\
\left[\tst{R}\diff{\ts{R}}{t}\right]\trans &= -\tst{R}\diff{\ts{R}}{t} \Rightarrow \text{Skew symmetric}
\end{align*}

If we now consider rotation of vector $\tv{v}=\ts{R}(t) \cdot \tv{v}_0$ with time, starting at $\tv{v}_0$, we have
\begin{align*}
\dot{\tv{v}} &= \diff{\ts{R}}{t} \tv{v}_0 \\
&= \diff{\ts{R}}{t} \tst{R}\tv{v}, \quad \tv{v}_0 = \tsi{R}\tv{v} = \tst{R}\tv{v}\\
\dot{\tv{v}} &= \ts{\omega} \tv{v}
\end{align*}

The skew symmetric tensor $\ts{\omega}$ is often called the spin tensor. 