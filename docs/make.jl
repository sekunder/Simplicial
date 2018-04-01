using Documenter, Simplicial
makedocs()

deploydocs(
    deps = Deps.pip("mkdocs", "python-markdown-math"),
    repo = "github.com/sekunder/Simplicial.jl.git"
)
