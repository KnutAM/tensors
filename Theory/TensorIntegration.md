+++
title = "Integrating tensor expressions"
+++

# Integrating tensor expressions

## Useful theorems
### Green-Gauss
The Green-Gauss theorem is often stated as
\begin{align}
\int_\Omega \phi \left[\tv{q}\cdot\tv{\nabla}\right] \dif \Omega &= \int_\Gamma \phi \tv{q}\cdot \tv{n} \dif \Gamma - \int_\Omega \left[\tv{\nabla}\phi\right]\cdot \tv{q} \dif \Omega
\end{align}
where $\Omega$ is a closed region (e.g. a volume) and $\Gamma$ its bounding surface (e.g. an area). $\tv{n}$ is the outward pointing normal on $\Gamma$. $\phi$ is a scalar and $\tv{q}$ a vector, both functions of the position $\tv{x}$. 
If we write the corresponding expression in index notation, we have
\begin{align}
\int_\Omega \phi \pdiff{q_i}{x_i} \dif \Omega &= \int_\Gamma \phi q_i n_i \dif \Gamma - \int_\Omega \pdiff{\phi}{x_i} q_i \dif \Omega\\
\end{align}

Let's set up this equation for a vector instead of the scalar $\phi$. By using the index notation, each free index is actually just a scalar so we effectively just write three equations of the same as above, changing $\phi$ to $u_k$ with $\tv{u}=u_k\onebase{k}$.
\begin{align}
\int_\Omega u_k \pdiff{q_i}{x_i} \dif \Omega &= \int_\Gamma u_k q_i n_i \dif \Gamma - \int_\Omega \pdiff{u_k}{x_i} q_i \dif \Omega\\
\int_\Omega \tv{u} \otimes \left[\tv{q}\cdot \tv{\nabla}\right] \dif \Omega &= \int_\Gamma \tv{u} \otimes \tv{q}\cdot\tv{n} \dif \Gamma - \int_\Omega \left[\tv{u} \otimes \tv{\nabla}\right]\cdot \tv{q} \dif \Omega
\end{align}

Similarly, we can write it exchanging the vector $\tv{q}=q_i\basei$ with a 2nd order tensor, $\ts{a}=a_{ji}\baseji$
\begin{align}
\int_\Omega u_k \pdiff{a_{ji}}{x_i} \dif \Omega &= \int_\Gamma u_k a_{ji} n_i \dif \Gamma - \int_\Omega \pdiff{u_k}{x_i} a_{ji} \dif \Omega\\
\int_\Omega \tv{u} \otimes \left[\ts{a} \cdot \tv{\nabla} \right] \dif \Omega &= \int_\Gamma \tv{u} \otimes \ts{a}\cdot\tv{n} \dif \Gamma - \int_\Omega \left[\tv{u} \otimes \tv{\nabla}\right]\cdot \tst{a} \dif \Omega
\end{align}
This expression represents 9 equations ($k$ and $j$). If we sum the equations where $k=j$, i.e. multiply by $\delta_{kj}$, we get
\begin{align}
\int_\Omega u_j \pdiff{a_{ji}}{x_i} \dif \Omega &= \int_\Gamma u_j a_{ji} n_i \dif \Gamma - \int_\Omega \pdiff{u_j}{x_i} a_{ji} \dif \Omega\\
\int_\Omega \tv{u} \cdot \left[\ts{a}\cdot \tv{\nabla} \right] \dif \Omega &= \int_\Gamma \tv{u}\cdot\ts{a}\cdot\tv{n} \dif \Gamma - \int_\Omega \left[\tv{u} \otimes \tv{\nabla}\right] : \ts{a} \dif \Omega
\end{align}