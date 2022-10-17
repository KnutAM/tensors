+++
title = "Index notation"
+++

{{redirect /Problems.html}}

# Index notation
\collaps{**A) Dimension and order**
1. We represent the components of a vector, $\tv{v}=[v_1, v_2]$ by $v_i$. What is the dimension of $v_i$?
2. What is the order of $v_i$?
3. If we define $m_{ij}=v_i v_j$, what is then the dimension and order of $m_{ij}$?
}{Answers
1\. The vector has 2 components so that $i$ can take two values (1 or 2). the dimension of $v_i$ is thus 2\\
2\. The object $v_i$ has one index, and thus the order is 1\\
3\. In $m_{ij}$, both $i$ and $j$ can take two different values (1 or 2). Hence, the dimension of $m_{ij}$ is still 2. However, there are now two indices, and the order of $m_{ij}$ is 2.
}

\collaps{**B) Einstein's summation convention**
1. In the following expressions, which indices are dummy and which are free?
   1.  $a_{ij}v_j$
   2.  $C_{ijkl}a_{kl}$
   3.  $u_i + v_i$
   4.  $a_{ij}b_{jk} + C_{ijkl}b_{jl}$
2. Given that $a_{ij}=C_{ijkl}b_{kl}$ and $b_{ij}=u_i v_j$, express $a_{ij}$ using $C$, $u$, and $v$
3. Using $a_{ij}=C_{ijkl}b_{kl}$, calculate $c_{kl}=a_{ij}D_{ijkl}$
}{Answers
1.1\. $i$ is not repeated in the same term and is a free index, $j$ is repeated and is dummy\\
1.2\. $i$ and $j$ are not repeated in the same term and are free, $k$ and $l$ are repeated and are thus dummies\\
1.3\. $i$ is not repeated in the same term (even if it is repeated in different terms) and is therefore a free index
1.4\. $i$ and $k$ exist only once in each term: free indices. $j$ and $l$ are repeated twice in each term: dummies\\
2\. If $b_{ij}=u_i v_j$, we have equivalently $b_{kl}=u_k v_l$, hence $a_{ij}=C_{ijkl} u_k v_l$\\
3\. The expression $c_{kl}=a_{ij}D_{ijkl}$ already includes the indices $k$ and $l$, we must therefore change those indices in the first expression before multiplying: $a_{ij}=C_{ijmn}b_{mn}$ is equivalent as in this expression $k$ and $l$ where dummy indices and we can therefore change them to any available indices, in this case $m$ and $n$. We then have $c_{kl}=C_{ijmn}b_{mn}D_{ijkl}$.}

\collaps{**C) Kronecker delta**
What do the following expressions evaluate when the dimension is 3?
1.  $\delta_{ij}\delta_{ij}$
2.  $\delta_{ij} - \delta_{ji}$
3.  $\delta_{kl}a_{ki}$
}{Answers
1\. Here we want to sum over $i$ and $j$ from 1 to 3. Hence we have\\
$[\delta_{11}]^2 + [\delta_{12}]^2 + [\delta_{13}]^2 + [\delta_{21}]^2 + [\delta_{22}]^2 + [\delta_{23}]^2 + [\delta_{31}]^2 + [\delta_{32}]^2 + [\delta_{33}]^2$\\
where only $\delta_{11}=\delta_{22}=\delta_{33}=1$ are nonzero. Hence, $\delta_{ij}\delta_{ij}=3$.\\
2\. Following the definition of $\delta_{ij}$ we see that it is symmetric, i.e. $\delta_{ij}=\delta_{ji}$
and consequently $\delta_{ij}-\delta_{ji}=0_{ij}$ (the indices on the zero are often skipped for brevity)\\
3\. The result will be a 2nd order object, e.g. $b_{li}=\delta_{kl}a_{ki}$. For each entry in $b_{li}$, 
we must sum over the 3 values of $k$. However, $\delta_{kl}=0$ if $k\neq l$. Only when $k=l$ is $\delta_{kl}=1$. 
I.e. $b_{li} = \delta_{1l}a_{1i}+\delta_{2l}a_{2i}+\delta_{3l}a_{3i}$. Only the term where $\delta_{kl}=1$ (i.e. $k=l$) will remain. It has the value $a_{li}$. Consequently, $\delta_{kl}a_{ki}=a_{li}$. In general, when we contract with $\delta_{ij}$ we can replace either $i$ or $j$ by $j$ or $i$ respectively in the factor we multiply with, and remove the $\delta_{ij}$ factor.}
