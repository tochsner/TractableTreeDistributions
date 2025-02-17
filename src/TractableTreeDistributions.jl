module TractableTreeDistributions

using StatsBase
using DataStructures
using Memoization

# utils

include("utils/trees.jl")

export load_trees, load_trees_from_newick

# CCD

include("ccd/clade.jl")
include("ccd/clade_split.jl")
include("ccd/cladify_tree.jl")
include("ccd/ccd1.jl")

export Clade, CladeSplit, TreeWithClades, cladify_tree
export CCD1, fit, sample, get_log_probability, get_most_likely_tree

export construct_tree

include("utils/construct_tree.jl")

end # module TractableTreeDistributions
