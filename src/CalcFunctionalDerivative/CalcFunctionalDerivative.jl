
# ∇(u) * ∇(λ)
# ∇J =  ∇(u) ⋅ ∇(λ)

function calc_gradient(u::Array{Float64,1}, λ::Array{Float64,1}, V::SingleFieldFESpace)
    # This is stupid & inefficient.
    # It should be a single quadraic form uᵀQλ
    # Then considerations about the right space and slow gridap interpolations are unnecessary.
    # Find way to assemble Q
    u_func = FEFunction(V,u)
    λ_func = FEFunction(V,λ)
    gradient = ∇(u_func) ⋅ ∇(λ_func)
    return interpolate_everywhere(gradient, V).free_values
end

# It should be a function V×V → V