+++
title = "Vector algebra"
+++

# Vector algebra
In physics, vectors describe quantities that have a magnitude and a spatial direction, such as a position, a velocity, and a temperature gradient. 
We will later see that these vectors are, in fact, basically first order tensors. But for now, let's cover the basic rules of vector algebra as an introduction.

Consider the vectors $\tv{x}$, $\tv{u}$, $\tv{v}$, and $\tv{w}$ in the figure below.

![](/assets/VectorAddition.svg)

The figure illustrates a the two first important properties of vector addition:

* Addition is associative, i.e. $\tv{u}+\tv{v}=\tv{v}+\tv{u}$
* Addition is commutative, i.e. $(\tv{u}+\tv{v}) + \tv{w} = \tv{u} + (\tv{v} + \tv{w})$


<!-- Are these formal defintions actually required, or is it more confusing to add all this here? -->
More formally, we can introduce a vector space $\set{V}$. This can for example be the real (3-dimensional) world, $\REAL^3$. We can then define the full set of properties required for the vectors in $\set{V}$ to be just vectors:

**Vector summation**
* Associative addition (see above)
* Commutative addition (see above)
* There exists a unique zero vector, $\tv{0}$, such that $\tv{0}+\tv{v}=\tv{v},\; \forall \tv{v}\in\set{V}$ 
* There exists a unique vector $-\tv{v}$, $\forall\tv{v}\in\set{V}$, such that $\tv{v}+(-\tv{v})=\tv{0}$.

**Multiplication by scalar**
Consider scalars $a, b\in\REAL$, then
* Associative multiplication by scalar, $a(b\tv{v})=(ab)\tv{v}$
* Commutative multiplication by scalar, $a\tv{v}=\tv{v}\cdot a$
* Multiplication by zero and unity: $1\tv{v}=\tv{v}$, $0\tv{v}=\tv{0}$
* Distributive multiplication by scalar wrt. vector addition: \\  $a(\tv{v}+\tv{w})=a\tv{v}+a\tv{w}$
* Distributive multiplication by scalar wrt. scalar addition:\\  $(a+b)\tv{v}=a\tv{v}+b\tv{v}$

## Linear dependence
Assume that you have two different vectors in 2d and you want to construct a 3rd vector by scaling your vectors and adding them together. Since there are 2 dimensions, and you have two vectors, this should be possible, or? 

However, what if your two vectors are pointing in the same direction (but have different length)? Then, you can only construct another vector in that direction. So even if you have two vectors, you are only spanning a line in your 2-dimensional space. I.e. you are only spanning a 1-dimensional space with your vectors. The reason is that these vectors are linearly dependent. Generally, we can formulate the definition of linear dependence as

\todo{Add an illustration of linear dependence versus independence in 2d}

\definition{With $i=1,2,\cdots,N$, the vectors $\tv{v}_i\in\set{V}$ are **linearly dependent** if there exists scalars $a_i\in\REAL:\,a_i a_i > 0$ (i.e. at least one $a_i\neq0$) such that $a_i \tv{v}_i = \tv{0}$). If no such scalars exists, the vectors $\tv{v}_i$ are **linearly independent**.}

$\tv{v}=a_i\tv{v}_i$, which we just used, is called a **linear combination** of the vectors $\tv{v}_i$. (Recall the [Einstein summation convention](/Theory/IndexNotation/#einsteins_summation_convention))

## Scalar product
The scalar product, $\tv{u}\cdot\tv{v}$, between two vectors, $\tv{u}$ and $\tv{v}$, is defined as

\begin{align}
    \tv{u}\cdot\tv{v} = \norm{\tv{u}}\norm{\tv{v}}\cos(\theta) \label{eq:def:scalar_product}
\end{align}

where $\norm{\tv{u}}$ is the length of the vector $\tv{u}$, and $\theta$ is the angle between vectors $\tv{u}$ and $\tv{v}$. *Note that we do not require a coordinate system to define this operation!*

From this definition, it follows that $\norm{\tv{u}} = \sqrt{\tv{u}\cdot\tv{u}}$ as in this case, $\theta=0$. Hence, $\tv{u}\cdot\tv{u}=0 \Leftrightarrow \tv{u}=\tv{0}$. Furthermore, if $\tv{u}$ and $\tv{v}$ are perpendicular vectors, then $\theta=\pi/2$ and thus $\tv{u}\cdot\tv{v}=0$.

When working with scalar products, the following algebraic rules apply

* Distributive multiplication, $\tv{u}\cdot(\tv{v}+\tv{w}) = \tv{u}\cdot\tv{v} + \tv{u}\cdot\tv{w}$. \\*Note that this is in contrast to the associative addition*
* Commutative multiplication, $\tv{u}\cdot\tv{v}=\tv{v}\cdot\tv{u}$
* Associative wrt. multiplication with scalar, $a(\tv{u}\cdot\tv{v}) = (a\tv{u})\cdot\tv{v}$

## Cross product
The cross (or vector) product, $\tv{u}\times\tv{v}$, between two vectors, $\tv{u}$ and $\tv{v}$, is defined as

\begin{align}
    \tv{u}\times\tv{v} = \norm{\tv{u}}\norm{\tv{v}}\sin(\theta) \tv{n} \label{eq:def:cross_product}
\end{align}

with the same quantities as in Equation \eqref{eq:def:scalar_product}. The new vector, $\tv{n}$, is the normal vector (with unit length) to the plane spanned by $\tv{u}$ and $\tv{v}$, following the right-hand-rule. The following animation from Wikipedia illustrates this rule well

~~~
<a href="https://commons.wikimedia.org/wiki/File:Cross_product.gif#/media/File:Cross_product.gif"><img src="https://upload.wikimedia.org/wikipedia/commons/6/6e/Cross_product.gif" alt="Cross product.gif"></a>
~~~


A couple of other properties, following from the definition in Equation \eqref{eq:def:cross_product}, are also shown by this animation:
* $\tv{u}\times\tv{u}=\tv{0}$
* $\tv{u}\times(-\tv{u})=\tv{0}$
* $\norm{\tv{u}\times\tv{v}} = \norm{\tv{u}}\norm{\tv{v}}$ if $\tv{u}\perp\tv{v}$ \\(i.e. $\tv{u}$ and $\tv{v}$ are perpendicular such that $\tv{u}\cdot\tv{v}=0$)


When working with cross products, the following algebraic rules apply
* Distributive multiplication, $\tv{u}\times(\tv{v}+\tv{w}) = \tv{u}\times\tv{v} + \tv{u}\times\tv{w}$
* **Anti**-commutative multiplication, $\tv{u}\times\tv{v} = - \tv{v}\times\tv{u}$
* Associative wrt. multiplication with scalar, $a(\tv{u}\times\tv{v}) = (a\tv{u})\times\tv{v}$
  
Here it is important to note the difference to scalar products, which are commutative, while cross products are anti-commutative (i.e. the order of multiplication matters!)


## Basis system
Above, we have seen that many properties of vectors can be defined without a basis system, simply by considering a vector as an object with a length and a direction. For these definitions, there is no need to introduce a coordinate system. However, if we want to perform actual calculations, everyting becomes easier if we define a base system from which we measure all quantities. Using a set of predefined so-called *base vectors*, we can express other vector quantities by using a linear combination of these base vectors. To ensure that this description is unique, we require that the base vectors are linearly independent. Otherwise, we can have the same vector described by different linear combinations.

Let's consider a basis system described by the linear independent vectors $\tv{e}_i$. A vector $\tv{v}$, can then be described by the unique coefficients $v_i$ (considering the $\tv{e}_i$ basis system) by $\tv{v}=v_i\tv{e}_i$. If we take the scalar product $\tv{u}\cdot\tv{v}$, we get
\begin{align}
\tv{u}\cdot\tv{v} = u_i v_j \tv{e}_i \cdot \tv{e}_j
\end{align}
resulting in the metric coefficients $e_{ij}=\tv{e}_i \cdot \tv{e}_j$ for the coordinate system. This coefficient complicates our calculations, but by choosing our basis vectors cleverly, we can make it become $\delta_{ij}$, resulting in $\tv{u}\cdot\tv{v} = u_i v_i$. But how can we choose $\tv{e}_i$, such that $\tv{e}_i \cdot \tv{e}_j=\delta_{ij}$?

The solution is an **orthonormal coordinate system** (Cartesian coordinate system). The *ortho* comes from *orthogonal*, implying perpendicularity between the base vectors. If we consider the scalar product, this implies that $\tv{e}_i\cdot\tv{e}_j=0$ if $i\neq j$. The *normal* comes from that the base vectors are normalized, i.e. have unit length ($\norm{\tv{e}_i}=1$). This implies that $\tv{e}_i\cdot\tv{e}_j=1$ if $i=j$. So with these two choices, we have exactly the definition of $\delta_{ij}$, for our **orthonormal coordinate system** with basis vectors $\tv{e}_i$:
\begin{align}
\tv{e}_i\cdot\tv{e}_j = \delta_{ij} = \left\lbrace\begin{matrix} 1 & i=j \\ 0 & i\neq j\end{matrix}\right.
\end{align}

### Scalar product in orthonormal basis system
As mentioned above, the scalar product between two vectors, $\tv{u}=u_i\tv{e}_i$ and $\tv{v}=v_i\tv{e}_i$, in an orthonormal coordinate system, $\tv{e}_i$, becomes
\begin{align}
\tv{u}\cdot\tv{v} = u_i v_i
\end{align}

### Cross product in orthonormal basis system
As seen from the definition, the cross product is more complicated. Again, we consider two vectors, $\tv{u}=u_i\tv{e}_i$ and $\tv{v}=v_i\tv{e}_i$, in an orthonormal coordinate system, $\tv{e}_i$. The cross-product then becomes
\begin{align}
\tv{u}\times\tv{v} = (u_i\tv{e}_i) \times (v_j\tv{e}_j) = u_i v_j \tv{e}_i\times\tv{e}_j
\end{align}

Based on the definition of the cross product and the orthonormal coordinate system, we know the following in 3 dimensions
\begin{align}
\tv{e}_i\times\tv{e}_j = \left\lbrace\begin{matrix} \pm\tv{e}_k & i\neq j & k\neq i,j\\ \tv{0} & i=j & \end{matrix}\right.
\end{align}

Hence, the direction in the case that $i\neq j$ is not properly defined. This depends on the order of our basis vectors. We therefore need to introduce this order in our definition of our coordinate system and we will choose a right-handed coordinate system (see the illustration used to define the [cross product](#cross_product)). For a coordinate system, this implies that $\tv{e}_3=\tv{e}_1\times\tv{e}_2$. Using the [*Levi-Civita symbol*](/Theory/IndexNotation/#levi-civita_symbol), $\varepsilon_{ijk}$, we then have 
\begin{align}
\tv{e}_i\times\tv{e}_j = \varepsilon_{ijk} \tv{e}_{k}
\end{align}
in a *right-handed* orthonormal coordinate system. The cross product for two general vectors is then
\begin{align}
\tv{u}\times\tv{v} = u_i v_j \varepsilon_{ijk} \tv{e}_k 
\end{align}

Unless otherwise specified, coordinate systems discussed on this webpage are right-handed and orthonormal. 
