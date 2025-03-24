
mutable struct SolutionDataL2NeumannBoundary
    K::AbstractArray{Float64,2}
    γ::AbstractArray{Float64,2}
    l2_error::Float64 # L2 error from 
    reg_error::Float64 # Regularization error
    error::Float64 # Total error
    steps::Int64 
    α::Float64 # Learn rate
end



struct SolverDataL2NeumannBoundary
    # Hallo
    mesh
    Ω::Triangulation  # Domain
    dΩ::Measure  # Volume measure
    Γ::BoundaryTriangulation  # Boundary
    dΓ::Measure  # Boundary measure
    V_n::FESpace  # FE space
    U_n::FESpace  # Trial FE space
    u
    v
    reffe  # Reference element
    N_n::Int64
    N_d::Int64
    m::Int64
    sol::SolutionDataL2NeumannBoundary
end


function from_EITFullData(data::EITFullData)