function calc_step()
    # Do something

    # Assemble matrix from esimation
    # Call single calculation step




    # Assemble all into one Gradient

    return gradient


end


function calc_step_single_L2_boundary_neumann(K, f, g, γ_boundary, m)
    # calculate state equation

    u = calc_state_L2_boundary_neumann(K, g, m)

    # calculate adjoint equation
    λ = calc_adjoint_L2_boundary_neumann(K, w, m)
    # calculate funcional derivative
    ∇J = calc_gradient_L2_boundary_neumann(u, λ)
    return ∇J, error
end

