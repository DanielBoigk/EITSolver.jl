
calc_state_L2_boundary_neumann(g::Vector{Float64}, K::AbstractArray{Float64,2}, m::Int64, n::Int64)
    boundary = zeros(n)
    # I'm unsure whether g has zeros appended or not:
    boundary[1:m] = g[1:m]
    u = K \ boundary
    return u
end