module TractableTreeDistributions

using StatsBase
using DataStructures
using Memoization
using Distributions

# utils

include("utils/trees.jl")

export load_trees, load_trees_from_newick

# Clades

include("clades/clade.jl")
include("clades/clade_split.jl")
include("clades/cladify_tree.jl")

export AbstractClade, Leaf, Clade, Split, TreeWithClades, cladify_tree
export CCD1, fit, sample, log_density, most_likely_tree

export construct_tree

include("utils/construct_tree.jl")

# Distributions

include("distributions/distribution.jl")
include("distributions/parameterized_tree.jl")
include("distributions/height_ratio_dist.jl")
include("distributions/independent_dist.jl")
include("distributions/ccd1.jl")
include("distributions/tractable_time_tree_dist.jl")

export ParameterizedTree, TractableTimeTreeDist
export HeightRatioDist, transform_height, transform_ratios, invert_height, invert_ratios
export IndependentDist
export transform, invert, fit!, sample, log_density

end # module TractableTreeDistributions
