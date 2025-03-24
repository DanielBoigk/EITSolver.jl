
mutable struct SolutionData 

end

struct SolverData
    # Hallo
    mesh
    Ω::Triangulation  # Domain
    dΩ::Measure  # Volume measure
    Γ::BoundaryTriangulation  # Boundary
    dΓ::Measure  # Boundary measure
    V_n::FESpace  # FE space
    U_n::FESpace  # Trial FE space
    V_d::FESpace  # FE space
    U_d::FESpace  # Trial FE space
    u_n
    v_n
    u_d
    v_d
    reffe  # Reference element1]
    N_n::Int64
    N_d::Int64
    m::Int64
end


function from_EITFullData(data::EITFullData)