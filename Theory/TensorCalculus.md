+++
title = "Differentiating tensor expressions"
+++

# Differentiating tensor expressions
To be completed...

## Differentiating tensor function wrt. scalar

## Differentiating scalar function wrt. tensor

## Differentiating tensor function wrt. tensor

## Gradient, divergence

## Curl

## Useful theorems
### Green-Gauss
The Green-Gauss theorem is often stated as
\begin{align}
\int_V \phi \left[\tv{q}\cdot\tv{\nabla}\right] \dif V &= \int_S \phi \tv{q}\cdot \tv{n} \dif S - \int_V \left[\tv{\nabla}\phi\right]\cdot \tv{q} \dif V
\end{align}
where $V$ is a volume and $S$ its bounding surface. $\tv{n}$ is the outward pointing normal on $S$. $\phi$ is a scalar and $\tv{q}$ a vector, both functions of the position $\tv{x}$. 
If we write the corresponding expression in index notation, we have
\begin{align}
\int_V \phi \pdiff{q_i}{x_i} \dif V &= \int_S \phi q_i n_i \dif S - \int_V \pdiff{\phi}{x_i} q_i \dif V\\
\end{align}

Let's set up this equation for a vector instead of the scalar $\phi$. By using the index notation, each free index is actually just a scalar so we effectively just write three equations of the same as above, changing $\phi$ to $u_k$ with $\tv{u}=u_k\onebase{k}$.
\begin{align}
\int_V u_k \pdiff{q_i}{x_i} \dif V &= \int_S u_k q_i n_i \dif S - \int_V \pdiff{u_k}{x_i} q_i \dif V\\
\int_V \tv{u} \otimes \left[\tv{q}\cdot \tv{\nabla}\right] \dif V &= \int_S \tv{u} \otimes \tv{q}\cdot\tv{n} \dif S - \int_V \left[\tv{u} \otimes \tv{\nabla}\right]\cdot \tv{q} \dif V
\end{align}

Similarly, we can write it exchanging the vector $\tv{q}$ with a 2nd order tensor, $\ts{a}=a_{ij}\baseij$
\begin{align}
\int_V u_k \pdiff{a_{ij}}{x_i} \dif V &= \int_S u_k a_{ij} n_i \dif S - \int_V \pdiff{u_k}{x_i} a_{ij} \dif V\\
\int_V \tv{u} \otimes \left[\tv{\nabla}\cdot \ts{a} \right] \dif V &= \int_S \tv{u} \otimes \tv{n}\cdot\ts{a} \dif S - \int_V \left[\tv{u} \otimes \tv{\nabla}\right]\cdot \ts{a} \dif V
\end{align}
This expression represents 9 equations ($k$ and $j$). If we sum the equations where $k=j$, i.e. multiply by $\delta_{kj}$, we get
\begin{align}
\int_V u_j \pdiff{a_{ij}}{x_i} \dif V &= \int_S u_j a_{ij} n_i \dif S - \int_V \pdiff{u_j}{x_i} a_{ij} \dif V\\
\int_V \tv{u} \cdot \left[\tv{\nabla}\cdot \ts{a} \right] \dif V &= \int_S \tv{n}\cdot\ts{a}\cdot\tv{u} \dif S - \int_V \left[\tv{u} \otimes \tv{\nabla}\right] : \tst{a} \dif V
\end{align}