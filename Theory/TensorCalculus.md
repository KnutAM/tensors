+++
title = "Differentiating tensor expressions"
+++

# Differentiating tensor expressions
On this page, we will work with expressions of the form
\begin{align}
\diff{\tv{u}}{\tv{v}} = \diff{u_i}{v_j} \baseij
\end{align}
which is true for *constant* orthonormal coordinate systems. With constant, we mean that the base vectors are constant in space. Hence, we can always differentiate the coefficients. And since we can consider each free coefficient, e.g. $u_1$, as a scalar value, we can apply basic calculus rules, for example the chain and product rules. 

## Differentiating tensor function wrt. scalar
If we consider $\ts{a} = f(x) = x\ts{b}$, then 
\begin{align}
\diff{\ts{a}}{x} = \diff{x b_{ij}}{x} \baseij = b_{ij} \baseij = \ts{b}
\end{align}
because $b_{ij}$ doesn't depend on $x$.

## Differentiating tensor function wrt. tensor
Let's first consider the differentiating a tensor wrt. itself. For a first-order tensor, we have
\begin{align}
\diff{\tv{u}}{\tv{u}} &= \diff{u_i}{u_j} \baseij\\
\diff{u_i}{u_j} &= \delta_{ij} \\
\diff{\tv{u}}{\tv{u}} &= \ts{I}
\end{align}
We see that if $i=j$ then $\dif u_i/\dif u_j = 1$. If $i\neq j$, then $\dif u_i/\dif u_j = 0$

If we now consider a 2nd order tensor, we have
\begin{align}
\diff{\ts{a}}{\ts{a}} &= \diff{a_{ij}}{a_{kl}} \baseijkl \\
\diff{a_{ij}}{a_{kl}} &= \delta_{ik}\delta_{jl}\\
\diff{\ts{a}}{\ts{a}} &= \tf{I}
\end{align}
We can see that if $i=k$ and $j=l$, then $\diffil{a_{ij}}{a_{kl}} = 1$. Otherwise, it is zero. In other words: $\delta_{ik}\delta_{jl}$. 

To consider a more complicated example, we look at
\begin{align}
\diff{\left[\tv{v}\ts{a}\right]}{\tv{v}} &= \diff{v_k a_{ki}}{v_j} \baseij \\
\diff{v_k a_{ki}}{v_j} &= \diff{v_k}{v_j} a_{ki} = \delta_{kj} a_{ki} = a_{ji} \\
\diff{\left[\tv{v}\ts{a}\right]}{\tv{v}} &= \tst{a}
\end{align}

## Differentiating scalar function wrt. tensor
If we consider $y = f(\ts{a}) = \ts{a}:\ts{a}$, then
\begin{align}
\diff{y}{\ts{a}} &= \diff{a_{kl}a_{kl}}{a_{ij}} \baseij\\
&= \left[\diff{a_{kl}}{a_{ij}} a_{kl} + a_{kl} \diff{a_{kl}}{a_{ij}}\right]\baseij \\
&= \left[\delta_{ki}\delta_{lj} a_{kl} + a_{kl} \delta_{ki}\delta_{lj}\right]\baseij \\
&= \left[a_{ij} + a_{ij}\right]\baseij = 2a_{ij}\baseij = 2\ts{a}
\end{align}

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