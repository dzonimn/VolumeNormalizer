using Documenter
using VolumeNormalizer

makedocs(
    sitename = "VolumeNormalizer",
    format = Documenter.HTML(),
    modules = [VolumeNormalizer]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/dzonimn/VolumeNormalizer.git"
)
