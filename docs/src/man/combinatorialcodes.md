# Combinatorial Codes

A *combinatorial code* ``C`` is a collection ``C \subseteq 2^{[n]}`` of *codewords*, subsets of ``[n] = \{1,\dots,n\}``. Generally, no further structure is assumed.

Combinatorial codes are represented using the type [`CombinatorialCode`](@ref).

```julia-repl
julia> C = CombinatorialCode([[],[1],[1,2],[2,3]]);

julia> show(C)
This is a code on 3 vertices: 1 2 3
The code consists of 4 words:
______________________________
emptyset
1
1 2
2 3
```

Objects of type `CombinatorialCode` are [iterable](https://docs.julialang.org/en/v0.6.0/manual/interfaces/#man-interface-iteration-1).

```julia-repl
julia> [length(c) for c in C]
4-element Array{Int64,1}:
 0
 1
 2
 2
```
