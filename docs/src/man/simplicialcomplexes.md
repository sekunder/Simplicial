# Abstract Simplicial Complexes

This package provides types for [Simplicial Complexes](@ref) and [Filtered Simplicial Complexes](@ref).

## Simplicial Complexes

A *simplicial complex* ``(V,\Delta)`` is a finite set ``V``, called the *vertex
set*, together with a collection ``\Delta \subseteq 2^{V}`` which is closed
under subsets, i.e. if ``\sigma \subseteq \tau \subseteq V`` are sets, and
``\tau \in \Delta``, then ``\sigma \in \Delta``. Typically ``(V,D)`` is simply
denoted ``\Delta`` as the vertex set is often understood.

Simplicial complexes are represented by the `SimplicialComplex` type.

```julia-repl
julia> K = SimplicialComplex([[],[1],[1,2],[2,3]]);

julia> show(K)
A 1-dimensional simplicial complex on 3 vertices 1 2 3
This complex has 2 facets:
Array{Int16,1}[Int16[1, 2], Int16[2, 3]]
```

Iterating over a `SimplicialComplex` will iterate over its *facets*.

## Filtered Simplicial Complexes

A *filtered simplicial complex* ``(\Delta,f)`` is a simplicial complex ``\Delta`` together with a *filtration function* ``f : \Delta \to R`` which is monotone, i.e. if ``\sigma \subseteq \tau \in \Delta``, then ``f(\sigma) \le f(\tau)``. Equivalently, a filtered simplicial complex is a sequence
```math
\Delta_0 \subseteq \Delta_1 \subseteq \cdots \subseteq \Delta_t
```
of simplicial complexes.

### Types

```@docs
FiltrationOfSimplicialComplexes
```
