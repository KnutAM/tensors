+++
title = "Special tensors"
+++

# Special tensors
Some tensors have special properties and occur in many applications, for example identity tensors, $1$, $\ts{I}$, and $\tf{I}$, as well as the rotation tensor $\ts{Q}$. Below, these, and additional tensors with specific properties are introduced. 

## Identity tensor
The identity tensors, $1$, $\ts{I}$, and $\tf{I}$, have the property that when multiplied (using the appropriate contraction for that order) with another tensor, the result is that other tensor, e.g. $\ts{a}\cdot\ts{I}=\ts{a}$. The identity tensors for order 0, 2, and 4 are

| Order | Symbol   | Definition                        | Index notation           | 
|-------|----------|-----------------------------------|--------------------------| 
| 0     | 1        | 1                                 | 1                        | 
| 2     | $\ts{I}$ | $\delta_{ij}\baseij$              | $\delta_{ij}$            | 
| 4     | $\tf{I}$ | $\delta_{ik}\delta_{jl}\baseijkl$ | $\delta_{ik}\delta_{jl}$ |

The fourth order identity tensor can actually be constructed via the special "upper" open product, $\opu$, as $\tf{I}=\ts{I}\opu\ts{I}$.

## Symmetric tensors
\collaps{A 2nd order tensor $\ts{a}=a_{ij} \baseij$ is *symmetric* if $\ts{a}=\tst{a}$, or equivalently, if $a_{ij}=a_{ji}$.}{
    The most prominent examples of symmetric 2nd order tensors in continuum mechanics are the Cauchy stress $\ts{\sigma}$ and the small strain tensor $\ts{\epsilon}$. From a computational point of view, it is advantageous to use that these are symmetric, because then we only need to work with 6 instead of 9 components in 3d.}

Any 2nd order tensor, $\ts{a}$, can be decomposed into its symmetric, $\ts{d}$, and skew-symmetric, $\ts{w}$ parts 
\begin{align}
\ts{a} &= \ts{d} + \ts{w}, \quad \ts{d} = \frac{1}{2}\left( \ts{a} + \tst{a} \right) \\
\ts{w} &= \ts{a} - \frac{1}{2}\left( \ts{a} + \tst{a} \right) = \frac{1}{2}\left( \ts{a} - \tst{a} \right)
\end{align}

Any skew-symmetric tensor, such as $\ts{w}$, then has the property that $\ts{w}=-\tst{w}$


\collaps{A 4th order tensor $\tf{A}=\tfind{A}{ijkl}\baseijkl$ is \\
\- *major symmetric* if $\tf{A}=\tft{A}$, or equivalently, if $\tfind{A}{ijkl}=\tfind{A}{klij}$.\\
\- *minor symmetric* if $\tfind{A}{ijkl}=\tfind{A}{jikl}=\tfind{A}{ijlk}=\tfind{A}{jilk}$.\\
\- *fully symmetric* if it is both minor and major symmetric
}{In continuum mechanics, an example of a fully symmetric 4th order tensor is the elasticity tensor, $\tf{E}$, giving the stresses from the strains via $\ts{\sigma}=\tf{E}:\ts{\epsilon}$ for a linear elastic material. A 4th order tensor normally have $3^4=81$ entries, but if we consider that it is minor symmetric, then there are only $6^2=36$ independent components. If we then also include that it is major symmetric, we only have 21 independent entries.}


## Proper orthogonal rotation tensors
If the 2nd order tensor, $\ts{R}$, is a proper orthogonal rotation tensor, then $\tst{R}=\tsi{R}$. The actual rotation is described in the [separate page](/Theory/Rotation), devoted to coordinate transformation and tensor rotation. Here, we will introduce the so-called polar decomposition: 

\collaps{If we have a 2nd order tensor $\ts{a}$, we can decompose it as $\ts{a}=\ts{R}\ts{U}$, where $\tst{R}=\tsi{R}$ and $\ts{U}=\tst{U}$.}{
    This decomposition is common for nonlinear continuum mechanics, where the deformation gradient $\ts{F}=\diff{x_i}{X_j} \baseij$ is decomposed into the rotation $\ts{R}$ and the stretch $\ts{U}$ tensor. The right Cauchy-Green deformation tensor, $\ts{C}$, is then introduced as $\ts{C}=\tst{F}\ts{F}=\tst{U}\tst{R}\ts{R}\ts{U}=\ts{U}^2$, and is not dependent of the rotation. Therefore, it is a good option to calculate a strain measure from.}

## Deviatoric and spherical tensors
Another common decomposition, is to distinguish between the deviatoric, $\ts{a}\dev$, and spherical, $\ts{a}\sph$, parts of a tensor. These are defined as
\begin{align}
\ts{a}\sph &= \frac{\tr(\ts{a})}{3}\ts{I} \\
\ts{a}\dev &= \ts{a} - \ts{a}\sph
\end{align}

\collaps{This decomposition is common in material modeling.}{For example, the isotropic Hooke's law is given as $\ts{\sigma}=\tf{E}:\ts{\epsilon}=2G\ts{\epsilon}\dev + 3K\ts{\epsilon}\sph$. However, in this setting, the spherical part is often denoted as the volumetric part. In small strains this is equivalent, but for finite strains (nonlinear continuum mechanics), the volume change is given by $\det(\ts{F})$ where $\ts{F}$ is the deformation gradient. Another situation is in plasticity, where the yield strength is often independent of the pressure, and is only given as a function of the deviatoric stresses. For example, the von Mises effective stress is given as $\sqrt{(3/2)\ts{\sigma}\dev:\ts{\sigma}\dev}$
}