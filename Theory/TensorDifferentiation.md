+++
title = "Differentiating tensor expressions"
+++

# Differentiating tensor expressions
On this page, we will work with expressions of the form
\begin{align}
\pdiff{\tv{u}}{\tv{v}}
\end{align}
that is, differentiation a tensor valued expression wrt. to a tensor. In this case, $\tv{u}=u_i\basei$ and $\tv{v}=v_i \basei$. Working with *constant* orthonormal coordinate systems, we use that
\begin{align}
\pdiff{\tv{u}}{\tv{v}} = \pdiff{u_i}{v_j} \baseij
\end{align}
Here, constant implies that the base vectors are constant in space. 
Hence, it suffices to differentiate the coefficients as the derivative of each base vector is zero. 
In general, for an $N$th order $\boldsymbol{y} = y_{i_1 i_2 \cdots i_N}\onebase{i_1}\otimes\onebase{i_2}\otimes\cdots\otimes\onebase{i_N}$ and an $M$th order $\boldsymbol{x} = x_{j_1 j_2 \cdots j_M}\onebase{j_1}\otimes\onebase{j_2}\otimes\cdots\otimes\onebase{j_M}$, we have that
\begin{align}
\pdiff{\boldsymbol{y}}{\boldsymbol{x}} &= \left[\pdiff{y_{i_1 i_2 \cdots i_N}}{x_{j_1 j_2 \cdots j_M}}\right] \onebase{i_1}\otimes\onebase{i_2}\otimes\otimes\onebase{i_N}\otimes\onebase{j_1}\otimes\onebase{j_2}\otimes\cdots\otimes\onebase{j_M}
\end{align}

\collaps{Furthermore, since we can consider each free coefficient, e.g., $u_1$, as a scalar value, we can apply basic calculus rules, such as the chain and product rules. Even when considering dummy (summation) indices, these rules hold (expand to see an example).}{Consider the following in 2d: 
The tensor $\ts{b}$ is a function of the tensor $\ts{a}$, such that $\ts{b}(\ts{a}) = \ts{a}\ts{a}$ (i.e. $b_{ij} = a_{in}a_{nj}$). We would like to differentiate $\ts{a}\ts{b}$ wrt. $\ts{a}$. 
\begin{align*}
&\pdiff{a_{im}b_{mj}(\ts{a})}{a_{kl}} =\\
&= \pdiff{\left[a_{i1}b_{1j}(\ts{a}) + a_{i2}b_{2j}(\ts{a})\right]}{a_{kl}}, \quad \left(\begin{matrix}\text{Expand dummy index summation}  \Rightarrow 2^4 \text{ individual}\\ \text{scalar expressions, one for each }i,j,k,l\end{matrix}\right)\\
&= \pdiff{a_{i1}b_{1j}(\ts{a})}{a_{kl}} + \pdiff{a_{i2}b_{2j}(\ts{a})}{a_{kl}}, \quad (\text{Product rule})\\
&= a_{i1}\pdiff{b_{1j}(\ts{a})}{a_{kl}} + \pdiff{a_{i1}}{a_{kl}}b_{1j}(\ts{a}) + a_{i2}\pdiff{b_{2j}(\ts{a})}{a_{kl}} + \pdiff{a_{i2}}{a_{kl}}b_{2j}(\ts{a}), \quad (\text{Chain rule}) \\
&= a_{i1}\pdiff{a_{1n}a_{nj}}{a_{kl}} + \delta_{ik}\delta_{1l} b_{1j}(\ts{a}) + a_{i2}\pdiff{a_{2n}a_{nj}}{a_{kl}} + \delta_{ik}\delta_{2l} b_{2j}(\ts{a}) \\
&= a_{i1}\left[a_{1n}\pdiff{a_{nj}}{a_{kl}}+\pdiff{a_{1n}}{a_{kl}}a_{nj}\right] + \delta_{ik}\delta_{1l} b_{1j}(\ts{a}) + a_{i2}\left[a_{2n}\pdiff{a_{nj}}{a_{kl}}+\pdiff{a_{2n}}{a_{kl}}a_{nj}\right] + \delta_{ik}\delta_{2l} b_{2j}(\ts{a}) \\
&= a_{i1}\left[a_{1n}\delta_{nk}\delta_{jl}+\delta_{1k}\delta_{nl}a_{nj}\right] + \delta_{ik}\delta_{1l} b_{1j}(\ts{a}) + a_{i2}\left[a_{2n}\delta_{nk}\delta_{jl}+\delta_{2k}\delta_{nl}a_{nj}\right] + \delta_{ik}\delta_{2l} b_{2j}(\ts{a})\\
&= a_{i1}\left[a_{1k}\delta_{jl}+\delta_{1k}a_{lj}\right] + \delta_{ik}\delta_{1l} b_{1j}(\ts{a}) + a_{i2}\left[a_{2k}\delta_{jl}+\delta_{2k}a_{lj}\right] + \delta_{ik}\delta_{2l} b_{2j}(\ts{a}) \\
&= a_{im}\left[a_{mk}\delta_{jl}+\delta_{mk}a_{lj}\right] + \delta_{ik}\delta_{ml} b_{mj}(\ts{a}), \quad \left( \begin{matrix} \text{Identify as summation,} \\ \text{reinstate dummy indices} \end{matrix} \right)\\
&= a_{im}\left[a_{mk}\delta_{jl}+\delta_{mk}a_{lj}\right] + \delta_{ik} b_{lj}(\ts{a})
\end{align*}

The same result is achieved without expanding the $\dummyind{\text{dummy indices}}$:
\begin{align*}
&\pdiff{a_{i\dummyind{m}}b_{\dummyind{m}j}(\ts{a})}{a_{kl}} =\\
&= a_{i\dummyind{m}}\pdiff{b_{\dummyind{m}j}(\ts{a})}{a_{kl}} + \pdiff{a_{i\dummyind{m}}}{a_{kl}}b_{\dummyind{m}j}(\ts{a})\\
&= a_{i\dummyind{m}}\pdiff{a_{\dummyind{mn}}a_{\dummyind{n}j}}{a_{kl}} + \delta_{ik}\delta_{\dummyind{m}l} b_{\dummyind{m}j}(\ts{a})\\
&= a_{i\dummyind{m}}\left[a_{\dummyind{mn}}\pdiff{a_{\dummyind{n}j}}{a_{kl}}+\pdiff{a_{\dummyind{mn}}}{a_{kl}}a_{\dummyind{n}j}\right] + \delta_{ik} b_{lj}(\ts{a})\\
&= a_{i\dummyind{m}}\left[a_{\dummyind{mn}}\delta_{\dummyind{n}k}\delta_{jl}+\delta_{\dummyind{m}k}\delta_{\dummyind{n}l}a_{\dummyind{n}j}\right] + \delta_{ik} b_{lj}(\ts{a})\\
&= a_{i\dummyind{m}}\left[a_{\dummyind{m}k}\delta_{jl}+\delta_{\dummyind{m}k}a_{lj}\right] + \delta_{ik} b_{lj}(\ts{a})
\end{align*}

And for completeness, this is $\ts{a}^2 \opu \ts{I} + \ts{a}\opu\tst{a} + \ts{I}\opu\tst{b}$
}

## Differentiating tensor function wrt. scalar
If we consider $\ts{a} = f(x) = x\ts{b}$, then 
\begin{align}
\pdiff{\ts{a}}{x} = \pdiff{x b_{ij}}{x} \baseij = b_{ij} \baseij = \ts{b}
\end{align}
because $b_{ij}$ doesn't depend on $x$.

## Differentiating tensor function wrt. tensor
Let's first consider the differentiating a tensor wrt. itself. For a first-order tensor, we have
\begin{align}
\pdiff{\tv{u}}{\tv{u}} &= \pdiff{u_i}{u_j} \baseij\\
\pdiff{u_i}{u_j} &= \delta_{ij} \\
\pdiff{\tv{u}}{\tv{u}} &= \ts{I}
\end{align}
As $\pdiffil{u_i}{u_j}$ is 1 if $i=j$ and 0 if $i\neq j$. 

If we now consider a 2nd order tensor, we have
\begin{align}
\pdiff{\ts{a}}{\ts{a}} &= \pdiff{a_{ij}}{a_{kl}} \baseijkl \\
\pdiff{a_{ij}}{a_{kl}} &= \delta_{ik}\delta_{jl}\\
\pdiff{\ts{a}}{\ts{a}} &= \tf{I}
\end{align}
$\pdiffil{a_{ij}}{a_{kl}}$ is 1 only if $i=k$ and $j=l$, otherwise, it is zero. In other words: $\pdiffil{a_{ij}}{a_{kl}}=\delta_{ik}\delta_{jl}$. 

To consider a more complicated example, we look at
\begin{align}
\pdiff{\left[\tv{v}\ts{a}\right]}{\tv{v}} &= \pdiff{v_k a_{ki}}{v_j} \baseij \\
\pdiff{v_k a_{ki}}{v_j} &= \pdiff{v_k}{v_j} a_{ki} = \delta_{kj} a_{ki} = a_{ji} \\
\pdiff{\left[\tv{v}\ts{a}\right]}{\tv{v}} &= \tst{a}
\end{align}

## Differentiating scalar function wrt. tensor
If we consider $y = f(\ts{a}) = \ts{a}:\ts{a}$, then
\begin{align}
\pdiff{y}{\ts{a}} &= \pdiff{a_{kl}a_{kl}}{a_{ij}} \baseij\\
&= \left[\pdiff{a_{kl}}{a_{ij}} a_{kl} + a_{kl} \pdiff{a_{kl}}{a_{ij}}\right]\baseij \\
&= \left[\delta_{ki}\delta_{lj} a_{kl} + a_{kl} \delta_{ki}\delta_{lj}\right]\baseij \\
&= \left[a_{ij} + a_{ij}\right]\baseij = 2a_{ij}\baseij = 2\ts{a}
\end{align}

## Gradient
Some operations wrt. the coordinates are so common that they have their own name and notation. The concept of a gradient, $\nabla f$, of a scalar function, $f(\tv{x})$, is well known. In our notation, we would then have
\begin{align}
\text{grad}(f) = \pdiff{f}{\tv{x}} = \nabla_i f(\tv{x}) \basei
\end{align}
And we will define the vector operator $\tv{\nabla}$ as 
\begin{align}
\tv{\nabla} = \nabla_i \basei = \pdiff{}{x_{i}} \basei
\end{align}
The gradient of higher order tensors is then possible to express as, e.g., $\grad{\tv{v}}$ and $\grad{\ts{a}}$.

\collaps{As $\tv{\nabla}$ is an operator, we must be explicit about what operand it is operating on by using brackets (expand for examples).}{To clarify what operand the gradient is acting on in a larger expression, it can be necessary to enclose the entire expression in brackets:

* $\ts{a}\grad{\ts{b}}$: **Not clear** if the gradient is acting on $\ts{b}$ or the expression $\ts{a}\ts{b}$
* $\ts{a}\left[\grad{\ts{b}}\right]$: Gradient acting on $\ts{b}$
* $\grad{\left[\ts{a}\ts{b}\right]}$: Gradient acting on the expression $\ts{a}\ts{b}$
* $\ts{c}\grad{\left[\ts{a}\ts{b}\right]}$: **Not clear** if gradient is acting on $\ts{a}\ts{b}$ or $\ts{c}\left[\ts{a}\ts{b}\right]$
* $\ts{c}\left[\grad{\left[\ts{a}\ts{b}\right]}\right]$: Gradient is acting on $\ts{a}\ts{b}$

In some cases, brackets are required also for regular expression, e.g. $\tf{C}=\tf{A}:\left[\ts{a}\opu\ts{b}\right] \neq \tf{D}=\left[\tf{A}:\ts{a}\right]\opu\ts{b}$ ($\tfind{C}{ijkl}=\tfind{A}{ijmn}a_{mk}b_{nl}\neq\tfind{D}{ijkl}=\tfind{A}{ikmn}a_{mn}b_{jl}$). However, it is more often required when working with the $\tv{\nabla}$ operator: It's always better to add an extra bracket to be extra clear and avoid mistakes.}

## Divergence
The divergence, $\text{div}(\ts{v})$, can also be more generally defined by using the $\tv{\nabla}$ operator as e.g.
* Divergence of 1st order tensor: $\div{\tv{v}}$
* Divergence of 2nd order tensor: $\div{\ts{a}}$

Divergence of higher order tensors is not common. As for the gradient, brackets are crucial to ensure that we know which operand (tensor) $\tv{\nabla}$ is operating on.

## Curl
The curl of a vector field, $\tv{v}(\tv{x})$, is defined as
\begin{align}
\text{curl}(\tv{v}) &= \curl{\tv{v}} = - \pdiff{v_i}{x_j} \varepsilon_{ijk} \tv{e}_k
\end{align}
This operation is common in fluid mechanics to find the rotation of a velocity field, $\tv{v}$. 

It is also possible to define the curl for higher order tensors. Here we use the definition from [Rubin (2000)](https://doi.org/10.1007/978-94-015-9379-3_2):
\begin{align}
\text{curl}(\ts{a}) &= \curl{\ts{a}} = - \pdiff{a_{ij}}{x_k} \varepsilon_{jkl} \tv{e}_i \otimes \tv{e}_l
\end{align}
which is the same as for vectors. An important property of the curl of a the gradient of a vector is
\begin{align}
\curl{\left[\grad{\tv{u}}\right]} = \ts{0}
\end{align}

\collaps{Actually, there are many different definitions of the curl for higher order tensors in the literature.}{For the curl of a second order tensor, $\text{curl}(\ts{a})$, it can be written as 
\begin{align*}
\text{curl}(\ts{a}) = \varepsilon_{opj} \pdiff{a_{ip}}{x_o} \baseij
\end{align*}
In the different variations, it could have the opposite sign, $\ts{a}$ could be transposed, or the result could be transposed. In many use cases, the sign, and whether or not the result is transposed, is not critical. However, definitions that have $\ts{a}$ transposed do not fulfill the important identity that $\curl{\left[\grad{\tv{u}}\right]} = \ts{0}$ and should be avoided!}
