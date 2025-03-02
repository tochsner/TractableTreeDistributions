abstract type AbstractDistribution end

function log_density(distribution::AbstractDistribution, tree::Tree)
    log_density(distribution, cladify_tree(tree))
end

function readable_name(distribution)
    nameof(distribution)
end