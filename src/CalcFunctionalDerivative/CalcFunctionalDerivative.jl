
# ∇(u) * ∇(λ)
# ∇J =  ∇(u) ⋅ ∇(λ)

function calc_gradient(u::Array{Float64,1}, λ::Array{Float64,1}, V::SingleFieldFESpace)

    # This is stupid & inefficient.
    # It should be a single quadraic form u^T*Q*λ
    # Find way to assemble Q
    u_func = FEFunction(u,V)
    λ_func = FEFunction(λ,V)
    gradient = ∇(u_func) ⋅ ∇(λ_func)
    return interpolate_everywhere(gradient, V)
end