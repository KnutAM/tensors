+++
title = "Tensor algebra"
+++

# Tensor algebra

\collaps{**A) To index notation**\\
Express the following expressions in index notation. 
Define an object (e.g. $\ts{a}$ and $a_{ij}$) that the expression is equal to, 
and then write that equation.\\
Example: $\tv{u}\otimes\tv{u}$ has the answer: $\ts{a}=\tv{u}\otimes\tv{u}$ becomes $a_{ij}=u_i u_j$ in index notation. 

1. $\tv{v}\ts{a}\tv{v}$
2. $\ts{x}\ts{b}\tv{u}$
3. $[\ts{a}\otimes\ts{a}]:[\tv{v}\otimes\tv{v}]$
}{Answers
1\. $\tv{v}\ts{a}\tv{v}$ becomes a scalar value, $x=\tv{v}\ts{a}\tv{v}=v_i a_{ij} v_j$\\
2\. $\ts{x}\ts{b}\tv{u}$ becomes a vector, $\tv{v}= \ts{x}\ts{b}\tv{u}$, $v_i=x_{ij}b_{jk}u_k$\\
3\. $[\ts{a}\otimes\ts{a}]:[\tv{v}\otimes\tv{v}]$ is a 4th order tensor double contracted with a 2nd order tensor, which gives a 2nd order tensor, $\ts{x}$. This becomes $x_{ij}= a_{ij} a_{kl} v_{k} v_{l}$
}

\collaps{**B) From index notation**\\
Express the following index expressions as tensor expressions.
1. $x = a_{ij} b_{ij}$
2. $v_{i} = u_k a_{ik}$
3. $\tfind{A}{ijkl}= u_i v_l b_{jk}$
}{Answers
1\. $x = \ts{a}:\ts{b}$ \\
2\. $\tv{v} = \ts{a}\tv{v}$ (note order!) \\
3\. $\tf{A} = \tv{u} \otimes \ts{b} \otimes \tv{v}$
}

\collaps{**C) Simplify expressions**\\
Use index notation to try to simplify the following expressions. 
1. $\ts{I}:\left[\ts{a}\ts{a}\right]-\ts{a}:\ts{a}$ where $a_{ij}=a_{ji}$ and $\ts{I}=\delta_{ij}\tv{e}_i\otimes\tv{e}_j$
2. $\ts{z}:\tf{Y}:\ts{x} - \left[\ts{z}:\tf{Y}\right]:\ts{x}$
3. $\tv{u}\ts{x}\tv{v} - [\tv{u}\otimes\tv{v}]:\ts{x}$
}{Answers
1\. Short: Insert directly to index expressions, $\delta_{ij} a_{ik}a_{kj} - a_{kl}a_{kl} = a_{ik}a_{ki} - a_{kl}a_{kl}$. Then use that $a_{ik}=a_{ki}$, which gives $a_{ki}a_{ki}-a_{kl}a_{kl}=\ts{a}:\ts{a} - \ts{a}:\ts{a} = 0$ \\
*Longer*: To get the index expression, we insert everything using basis vectors: \\
$ [\delta_{ij} \tv{e}_i\otimes\tv{e}_j]:[[a_{kl} \tv{e}_k\otimes\tv{e}_l]\cdot[a_{mn} \tv{e}_m\otimes\tv{e}_{n}]] -  [a_{op} \tv{e}_o\otimes\tv{e}_p] : [a_{qr} \tv{e}_q\otimes\tv{e}_r]$ \\
Take all index coefficients outside \\
$ \delta_{ij}a_{kl}a_{mn}[\tv{e}_i\otimes\tv{e}_j]:[[\tv{e}_k\otimes\tv{e}_l]\cdot[\tv{e}_m\otimes\tv{e}_{n}]] -  a_{op}a_{qr}[\tv{e}_o\otimes\tv{e}_p]:[\tv{e}_q\otimes\tv{e}_r]$\\
Evaluate the single contraction (dot-product) \\
$ \delta_{ij}a_{kl}a_{mn}[\tv{e}_i\otimes\tv{e}_j]:[\tv{e}_k\otimes\tv{e}_{n}\delta_{lm}] -  a_{op}a_{qr}[\tv{e}_o\otimes\tv{e}_p]:[\tv{e}_q\otimes\tv{e}_r]$ \\
Insert definition of the double contractions \\
$ \delta_{ij}a_{kl}a_{mn}[\tv{e}_i\cdot \tv{e}_k][\tv{e}_j\cdot\tv{e}_{n}\delta_{lm}] -  a_{op}a_{qr}[\tv{e}_o\cdot\tv{e}_q][\tv{e}_p\cdot\tv{e}_r]$ \\
Evaluate the new single contractions \\
$ \delta_{ij}a_{kl}a_{mn}[\delta_{ik}][\delta_{jn}\delta_{lm}] -  a_{op}a_{qr}[\delta_{oq}][\delta_{pr}]$ \\
Simplify all "$\delta_{ij}$" by exchanging replacing one index: "$x_{ij}\delta_{jk}=x_{ik}$" \\
$ a_{jl}a_{lj} -  a_{qp}a_{qp}$ \\
And now we have a similar expression to the short route, and can finish following that one. \\
2\. $z_{ij}\tfind{Y}{ijkl}x_{kl} - [z_{ij} \tfind{Y}{ijkl}]x_{kl} = 0$ \\
3\. $u_i x_{ij} v_j - [u_i v_j] x_{ij} = 0$
}

\collaps{**D) Identity tensors and transposition**\\
Simplify the following expressions by using index notation
1. $\ts{a}\ts{I}$
2. $[\ts{I}\opu\ts{I}]:\ts{a}$
3. $\ts{I}:[\ts{a}\tst{a}]$
}{Answers
1\. $a_{ij} \delta_{jk} = a_{ik}$, hence, $\ts{a}\ts{I}=\ts{a}$.
2\. $\tf{X}=\ts{b}\opu\ts{c}$ implies $\tfind{X}{ijkl}=b_{ik}c_{jl}$, hence $[\delta_{ik} \delta_{jl}] a_{kl} = a_{ij}$ and $[\ts{I}\opu\ts{I}]:\ts{a}=\ts{a}$. \\
3\. $\delta_{ij}[a_{ik} a_{kj}\trans] = \delta_{ij}[a_{ik} a_{jk}] = a_{ik} a_{ik} = \ts{a}:\ts{a}$
}

\collaps{**E) Invariants**\\
Test if the following expressions are invariant to rotations
1. $\tv{v}\cdot\tv{u}$
2. $\ts{a}:\ts{a}$
3. $\tv{v}\ts{a}\tv{v}$
}{Answers
In all cases, we should show that rotating all tensors in the expressions by a proper orthogonal rotation tensor $\ts{R}$
does not change the result initial expression. We will heavily use that $\tst{R}=\tsi{R}$, such that $\tst{R}\ts{R}=\ts{I}$\\
1\. $\tv{v}\cdot\tv{u}$\\ $[\ts{R}\tv{v}]\cdot[\ts{R}\tv{u}]=R_{ij}v_j R_{ik}u_k = R\trans_{ki}R_{ij} v_j u_k = R^{-1}_{ki}R_{ij} v_j u_k = \delta_{kj} v_j u_k = v_k u_k = \tv{v}\cdot\tv{u}$ \\
2\. $\ts{a}:\ts{a}$\\ $[\ts{R}\ts{a}\tst{R}]:[\ts{R}\ts{a}\tst{R}] = [R_{ij} a_{jk} R\trans_{kl}] [R_{im} a_{mn} R\trans_{nl}] = R\trans_{mi}R_{ij} R\trans_{kl} R_{ln} a_{jk} a_{mn} = \delta_{mj} \delta_{kn} a_{jk} a_{mn} = a_{mn} a_{mn} = \ts{a}:\ts{a}$ \\
3\. $\tv{v}\ts{a}\tv{v}$ \\
$[\ts{R}\tv{v}][\ts{R}\ts{a}\tst{R}][\ts{R}\tv{v}] = [R_{ij} v_j] [R_{ik} a_{kl} R\trans_{lm}][R_{mn} v_n] = R\trans_{ki} R_{ij} R\trans_{lm}R_{mn} v_j a_{kl} v_n = \delta_{kj} \delta_{ln} v_j a_{kl} v_n = v_k a_{kl} v_l = \tv{v}\ts{a}\tv{v}$
}
