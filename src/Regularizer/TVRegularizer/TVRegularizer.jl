struct TVRegularizerData
    ϵ::Float64
    U::SingleFieldFESpace
end

function calc_TV_gradient(γ::SingleFieldFEFunction, data::TVRegularizerData)
    σ_h = interpolate(γ, V)
    ∇γ = gradient(γ_h)
    norm_∇γ = sqrt(inner(∇γ, ∇γ) + data.ϵ^2)
    w = ∇γ / norm_∇γ
    l(v) = ∫( ∇(v) ⋅ w )dΩ
    #It might be possible to split this up for minor efficiency gain:
    grad_TV_vec = assemble_vector(l, data.U)
end