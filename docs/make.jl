using Atmosphere
using Documenter

DocMeta.setdocmeta!(Atmosphere, :DocTestSetup, :(using Atmosphere); recursive=true)

makedocs(;
    modules=[Atmosphere],
    authors="Ryan Dungee <rdungee@hawaii.edu> and contributors",
    repo="https://github.com/JuliaAO/Atmosphere.jl/blob/{commit}{path}#{line}",
    sitename="Atmosphere.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaAO.github.io/Atmosphere.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaAO/Atmosphere.jl",
    devbranch="main",
)
