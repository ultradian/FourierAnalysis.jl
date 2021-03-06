push!(LOAD_PATH,"../src/")
using Documenter, FourierAnalysis

makedocs(
   sitename="FourierAnalysis",
   authors="Marco Congedo, CNRS, France",
   modules=[FourierAnalysis],
   pages =  [
      "index.md",
      "Main Module" => "MainModule.md",
      "Tapering Windows" => "tapers.md",
      "frequency domain" => Any[
                           "Spectral Estimations" => "spectra.md",
                           "Cross-Spectral Matrices" => "crossspectra.md",
                           "Coherence Matrices" => "coherence.md",
                           "Goertzel's Algorithms" => "goertzel.md",
      ],
      "time-frequency(TF) domain" => Any[
                           "TF Representations" => "timefrequency.md",
                           "TF Univariate Measures" => "timefrequencyuni.md",
                           "TF Bivariate Measures " => "timefrequencybi.md",
      ],
      "utilities" => Any[
                        "Plots" => "recipes.md",
                        "Tools" => "tools.md",
                        "FFTW planners"  => "fftw.md",
                        "Filter Banks" => "filters.md",
                        "Hilbert Transform" => "hilbert.md",
      ]
   ]
)

# fix

deploydocs(
   # root
   # target = "build", # add this folder to .gitignore!
   repo = "github.com/Marco-Congedo/FourierAnalysis.jl.git",
   # branch = "gh-pages",
   # osname = "linux",
   # deps = Deps.pip("pygments", "mkdocs"),
   # devbranch = "dev",
   # devurl = "dev",
   # versions = ["stable" => "v^", "v#.#", devurl => devurl],
)
