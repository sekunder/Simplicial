using Documenter, SimplicialDev
makedocs()

deploydocs(
    deps = Deps.pip("mkdocs", "python-markdown-math"),
    repo = "github.com/sekunder/SimplicialDev.jl.git"
)
