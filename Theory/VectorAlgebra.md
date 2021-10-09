+++
title = "Vector algebra"
+++

# Vector algebra
In physics, vectors describe quantities that have a magnitude and a spatial direction, such as a position, a velocity, and a temperature gradient. 
We will later see that these vectors are, in fact, first order tensors. But for now, let's cover the basic rules of vector algebra as an introduction.

Consider the vectors $\ta{x}$, $\ta{u}$, $\ta{v}$, and $\ta{w}$ in the figure below.

![](/assets/VectorAddition.svg)

The figure illustrates a the two first important properties of vector addition:

* Addition is associative, i.e. $\ta{u}+\ta{v}=\ta{v}+\ta{u}$
* Addition is commutative, i.e. $(\ta{u}+\ta{v}) + \ta{w} = \ta{u} + (\ta{v} + \ta{w})$


<!-- Are these formal defintions actually required, or is it more confusing to add all this here? -->
More formally, we can introduce a vector space $\set{V}$. This can for example be the real (3-dimensional) world, $\REAL^3$. We can then define the full set of properties required for the vectors in $\set{V}$ to be just vectors:

**Vector summation**
* Associative addition (see above)
* Commutative addition (see above)
* There exists a unique zero vector, $\ta{0}$, such that $\ta{0}+\ta{v}=\ta{v},\; \forall \ta{v}\in\set{V}$ 
* There exists a unique vector $-\ta{v}$, $\forall\ta{v}\in\set{V}$, such that $\ta{v}+(-\ta{v})=\ta{0}$.

**Multiplication by scalar**
Consider scalars $a, b\in\REAL$, then
* Associative multiplication by scalar, $a(b\ta{v})=(ab)\ta{v}$
* Commutative multiplication by scalar, $a\ta{v}=\ta{v}\cdot a$
* Multiplication by zero and unity: $1\ta{v}=\ta{v}$, $0\ta{v}=\ta{0}$
* Distributive multiplication by scalar wrt. vector addition: \\  $a(\ta{v}+\ta{w})=a\ta{v}+a\ta{w}$
* Distributive multiplication by scalar wrt. scalar addition:\\  $(a+b)\ta{v}=a\ta{v}+b\ta{v}$

## Linear dependence
Assume that you have two different vectors in 2d and you want to construct a 3rd vector by scaling your vectors and adding them together. Since there are 2 dimensions, and you have two vectors, this should be possible, or? 

However, what if your two vectors are pointing in the same direction (but have different length)? Then, you can only construct another vector in that direction. So even if you have two vectors, you are only spanning a line in your 2-dimensional space. I.e. you are only spanning a 1-dimensional space with your vectors. The reason is that these vectors are linearly dependent. Generally, we can formulate the definition of linear dependence as

\todo{Add an illustration of linear dependence versus independence in 2d}

\definition{With $i=1,2,\cdots,N$, the vectors $\ta{v}_i\in\set{V}$ are **linearly dependent** if there exists scalars $a_i\in\REAL$ such that $a_i \ta{v}_i = \ta{0}$. (Recall the "Einstein summation convention"). If no such scalars exists, the vectors $\ta{v}_i$ are **linearly independent**.}

$\ta{v}=a_i\ta{v}_i$, which we just used, is called a **linear combination** of the vectors $\ta{v}_i$. 


## Base system
Using the 

## Scalar product

## Cross product

## Orthonormal base systems