# The formula for the adjoint is:

# ∂λ/∂n = 2w/γ  on ∂Ω
# with w = u_n - f  on ∂Ω
# This should be a pure Neumann problem

# Alternative adjoints can be implemented later


function calc_adjoint_L2_boundary_neumann(u::Vector{Float64}, f::Vector{Float64}, K::AbstractArray{Float64,2}, γ::Vector{Float64}, m::Int64, n::Int64)
    w = f - u[1:m]
    boundary = zeros(n)
    boundary[1:m] = 2 * w ./ γ[1:m]
    λ = K \ boundary
    return λ
end