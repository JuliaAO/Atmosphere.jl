using Atmosphere
using Documenter

DocMeta.setdocmeta!(Atmosphere, :DocTestSetup, :(using Atmosphere); recursive=true)

makedocs(;
    modules=[Atmosphere],
    authors="Ryan Dungee <rdungee@hawaii.edu> and contributors",
    repo="https://github.com/rdungee/Atmosphere.jl/blob/{commit}{path}#{line}",
    sitename="Atmosphere.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rdungee.github.io/Atmosphere.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rdungee/Atmosphere.jl",
    devbranch="main",
)
