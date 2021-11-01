+++
title = "What are tensors?"
+++
# What are tensors?

## Why index notation?
In the previous [chapter](/Theory/VectorAlgebra), we wrote that vectors are basically first-order tensors. But vectors is also a notion used in linear algebra, where we may have an expression such as
\begin{align}
\tv{v}\Trans \tv{A} \tv{v}
\end{align}
where $\tv{v}$ is a (column) vector and  $\tv{A}$ is a matrix. But why do we need to transpose the first $\tv{v}$? *To make the dimensions match*. But $\tv{v}$ only have one dimension, so why is this required?

Let's look at another example involving differentiation: How to evaluate the following
\begin{align}
\nabla(\tv{u}\cdot\tv{v})
\end{align}
by using the chain rule, where $\nabla$ is the gradient operator. This operation is well known for scalar problems, i.e
\begin{align}
\nabla f(x,y,z) = \left[\diff{f}{x_1}, \diff{f}{x_2}, \diff{f}{x_3}\right]\Trans
\end{align}

But if we want to expand the expression, we need to write something like
\begin{align}
\nabla(\tv{u}\cdot\tv{v}) = \tv{v}\Trans \nabla\tv{u} + \tv{u}\Trans \nabla\tv{v} \label{eq:vector_gradient_dot}
\end{align}

But what would taking the gradient of a vector mean? In vector calculus, we would need to define this, and it is sometimes denoted the *Jacobian matrix* of the vector field, defined as 
\begin{align}
\nabla\tv{u} = \begin{bmatrix}
\diff{u_1}{x_1} & \diff{u_1}{x_2} & \diff{u_1}{x_3} \\
\diff{u_2}{x_1} & \diff{u_2}{x_2} & \diff{u_2}{x_3} \\
\diff{u_3}{x_1} & \diff{u_3}{x_2} & \diff{u_3}{x_3}
\end{bmatrix} \label{eq:vector_gradient}
\end{align}

So when doing this with vectors and matrices, two important things happened:
1. The order changed to perform the correct contractions
2. We transposed vectors to make dimensions match

If we instead do this in index notation, where we, "once and for all", use the definition that in index notation $\nabla_i = \pdiff{}{x_i}$, we have that
\begin{align}
\nabla_i (u_j v_j) &= (\nabla_i u_j) v_j + u_j (\nabla_i v_j)\\
\pdiff{(u_j v_j)}{x_i} &= \pdiff{u_j}{x_i} v_j + u_j \pdiff{v_j}{x_i}
\end{align}
Then we see that we do not need to care about the order of the terms. We still have to ensure that the differentiation operates on the correct symbol, as it is also required if we use the product rule on scalars! Secondly, we do not have any transposition. 

Similarly, if we consider the first example, if we interpret the matrix $\tv{A}$ as a second-order tensor, $\ts{A}$ with indices $A_{ij}$, we can write $v_i A_{ij} v_j = v_i v_j A_{ij} = A_{ij} v_i v_j$. So we do not need to care about transposition, and we can move the terms around as we like. This possibility provides a major simplification when working with larger expressions, and especially for the differentiation as we just discussed. 

## Tensors
We have introduced index notation, vector algebra and why index notation is nice for vector and matrix calculations. So why do we actually need tensors and how are they different from regular vectors and matrices with the addon of index notation? 

For vectors, the answer is that nothing is different. Vectors are first order tensors, and the index notation is just a way of representing them in a given coordinate system. We showed [previously](/Theory/VectorAlgebra#basis_system) a vector $\tv{v}$ in an orthonormal basis system $\tv{e}_i$, described by its indices $v_i$, such that $\tv{v}=v_i\tv{e}_i$. In the index notation, we saw that we could have objects of higher orders, such as $a_{ij}$. So a straight forward extension to second-order tensors would then be $\ts{a}=a_{ij}\tv{e}_i\otimes\tv{e}_j$. *And this is exactly how a 2nd order tensor is defined!* But OK, perhaps not that straight-forward: what does $\otimes$ imply here?

We call $\otimes$ the *open product*. When we do a *contraction*, such as the dot (or scalar) product, $\cdot$, the order for the tensor reduces: The dot product between two vectors is a scalar (a tensor of order 0). The open product between two vectors is a 2nd order tensor. So the open product increases the order of the tensor. We could, for example, take the open product between two vectors in different basis systems:  $\tv{u}=u_i\tv{e}_i$ and $\tv{v}=v_i\tv{E}_i$. This becomes $\tv{u}\otimes\tv{v}=u_i v_i \tv{e}_i\otimes\tv{E}_i$. The order in this product matter, e.g. $u_i v_j \tv{e}_i\otimes\tv{E}_j=\tv{e}_i\otimes\tv{E}_j u_i v_j = v_i u_j\tv{e}_i\otimes\tv{E}_j \neq v_i u_j\tv{E}_j\otimes\tv{e}_i$. I.e., we can move the coefficients with indices around, but we can not change the order of the base vectors. In fact, the latter corresponds to taking the transpose of the 2nd order tensor. Even if $\tv{e}_i=\tv{E}_i$, the order in the open product must remain. So we see that in our operations, the coefficients (e.g. $u_i$ and $v_j$) can be separated out from our open product, but the basis must remain in the correct order. 

If we would like to take a dot product between a 2nd order tensor, $\ts{a}=a_{ij}\tv{e}_i\otimes\tv{e}_j$ and a vector $\tv{v} = v_i\tv{e}_i$, we get
\begin{align}
\ts{a}\cdot\tv{v} = \left[a_{ij} \tv{e}_i\otimes\tv{e}_j\right] \cdot \left[v_k \tv{e}_k \right] = a_{ij} v_k \tv{e}_i\otimes\tv{e}_j \cdot \tv{e}_k = a_{ij} v_k \tv{e}_i \delta_{jk} = a_{ij} v_j \tv{e}_i
\end{align}
So we need to maintain the order of operations, but since $\tv{e}_j \cdot \tv{e}_k = \delta_{jk}$, this simplies the expression (because we work in an orthonormal coordinate system). 

And the expression $a_{ij} v_j$ is just a simple summation that we do in index notation. As long as we are aware of the basis behind the scenes, we often skip writing out the basis because we assume that we work in the same orthonormal basis system. With the open product defined, we can define tensors of arbitrary dimensions, such as a fourth-order tensor as $\tf{B}=\tfind{B}{ijkl} \tv{e}_i\otimes\tv{e}_j\otimes\tv{e}_k\otimes\tv{e}_l$. 

This was just a brief motivation for why tensors are easier to work with than vectors/matrices in the linear algebra sense - they are connected to a basis system in a proper way (matrices are not). Still, we can represent the components of first- and second-order tensors by regular vectors and matrices. This distinction can be hard in the beginning but it will become clearer with time. 