+++
title = "Tensor algebra"
+++

# Tensor algebra
In the previous [chapter](/THeory/TensorIntro) we vaguely introduced the concept of higher (than first) order tensors. The key new concept was the open product (also called the dyadic product), $\otimes$. This operations allows us to create a higher order tensor, by taking the dyadic product between two basis to create a second order tensor $\ts{a}$ as
\begin{align}
\ts{a} = \tv{u}\otimes\tv{v} = u_i v_j \twobase{i}{j} = a_{ij} \twobase{i}{j}
\end{align}

If we work with indicial expressions, we just need to respect the rules of the [index juggling](/Theory/IndexNotation/#index_juggling). However, for writing out the actual operations, it is often more convenient and easier to read by not introducing indices. Therefore, we often write the expressions using actual tensors, and then we can introduce the following operations

* **Single contraction**, "$\cdot$"
    - Two 1st order tensors, $\tv{u}\cdot\tv{v}$\\ $c = \tv{u}\cdot\tv{v} = u_i v_i$
    - Two 2nd order tensors, $\ts{a}\ts{b}$\\ $\ts{c}=c_{ij}\twobase{i}{j}=\ts{a}\ts{b} = a_{ij} b_{jk} \twobase{i}{k}$ \\ *In pure index notation:* $c_{ij} = a_{ik} b_{kj}$
    - 2nd and 1st order tensors, $\ts{a}\tv{u}$\\  $\ts{v}=v_{i}\onebase{i}=\ts{a}\tv{u} = a_{ij} u_{j} \onebase{i}$ \\ *In pure index notation:* $v_i=a_{ij} u_j$
* **Double contraction**, "$:$"
    - Two 2nd order tensors, $\ts{a}:\ts{b}$ \\ $c = \ts{a}:\ts{b} = a_{ij} b_{ij}$
    - 4th and 2nd order tensors, $\tf{A}:\ts{b}$ \\ $\ts{c} = c_{ij}\twobase{i}{j} = \tf{A}:\ts{b} = \tfind{A}{ijkl} b_{kl} \twobase{i}{j}$ \\ *In pure index notation:* $c_{ij} = \tfind{A}{ijkl} b_{kl}$
* **Open product**, "$\otimes$"
    - Two 1st order tensors, $\tv{u}\otimes\tv{v}$ \\ $\ts{c} = c_{ij} \twobase{i}{j} = \tv{u}\otimes\tv{v} = u_i v_j \twobase{i}{j}$
    - Two 2nd order tensors, $\ts{a}\otimes\ts{b}$ \\ $\tf{C} = \tfind{C}{ijkl} \fourbase{i}{j}{k}{l} = \ts{a}\otimes\ts{b} = a_{ij} b_{kl} \fourbase{i}{j}{k}{l}$
* **Upper open product**, "$\opu$"\\
  Only defined for 2nd order tensors, $\ts{a}\opu\ts{b}$ \\ $\tf{C} = \tfind{C}{ijkl} \fourbase{i}{j}{k}{l} = \ts{a}\opu\ts{b} = a_{ik} b_{jl} \fourbase{i}{j}{k}{l}$
* **Lower open product**, "$\opl$"\\
  Only defined for 2nd order tensors, $\ts{a}\opl\ts{b}$ \\ $\tf{C} = \tfind{C}{ijkl} \fourbase{i}{j}{k}{l} = \ts{a}\opl\ts{b} = a_{il} b_{jk} \fourbase{i}{j}{k}{l}$

*Did you notice anything strange about this expression? The indicies on the left and right hand side basis don't match ($c_{ij}\twobase{i}{j}$ versus $a_{ij}b_{jk}\twobase{i}{k}$). Actually, this is perfectly valid, because the indices are [dummy indices](/Theory/IndexNotation/#index_juggling) as they are contracted between the coefficients and the basis vectors. However, when not writing out the basis vectors, we assume that we have the same indices and index order of the basis vectors in each term in an expression. If we have that, e.g. the equivalent expression $c_{ik}\twobase{i}{k}=a_{ij} b_{jk} \twobase{i}{k}$, we can express this as $c_{ik} = a_{ij} b_{jk}$ and drop the basis vectors. This holds true under the condition that (1) we have an orthonormal basis system and (2) that the basis vector indicies and order are the same on both sides. 


# Derived rules
By using our rules for index notation, we can investigate how the above multiplication operations behave. For a full set of these rules, please see the [reference](/Reference/TensorOperations). The first example here, is the order of operations for the dot product between two vectors, that is, 
\begin{align}
\tv{u}\cdot\tv{v} = u_i v_i = v_i u_i = \tv{v}\cdot\tv{u}
\end{align}
so clearly the order of the vectors do not matter. Similarly, for the double contraction between two 2nd order tensors, 
\begin{align}
\ts{a}:\ts{b} = a_{ij} b_{ij} = b_{ij} a_{ij} = \ts{b}:\ts{a}
\end{align}
we also have no difference if we flip the order. However, if we take the dot product between a 1st and 2nd order tensor, 
\begin{align}
\ts{a}\cdot\tv{u} = a_{ij} u_j = u_j a_{ij} \neq \tv{u}\cdot\ts{a}\; \forall\; \ts{a}
\end{align}
The reason that the last relation is not equal for all $\ts{a}$, is that we contract the the last index of $\ts{a}$ with $\tv{u}$'s index. (Note that if $\ts{a}$ is symmetric, then this would be an equality.)

If we instead would look at a sum, we can consider $\tf{A}:\left[\ts{b} + \ts{c}\right]$,
\begin{align}
\tfind{A}{ijkl}\left[b_{kl} + c_{kl}\right] = \tfind{A}{ijkl} b_{kl} + \tfind{A}{ijkl} c_{kl}
\end{align}
Which holds as we are only considering summation and multiplication when working with the indices, i.e. $\tf{A}:\left[\ts{b} + \ts{c}\right]=\tf{A}:\ts{b} + \tf{A}:\ts{c}$