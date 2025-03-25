
calc_state_L2_boundary_neumann!(u::Vector{Float64}, K::AbstractArray{Float64,2}, m::Int64, n::Int64)
    boundary = zeros(n)
    boundary[1:m] = σ[1:m] ./ γ[1:m]
    u = K \ boundary
    return u
end