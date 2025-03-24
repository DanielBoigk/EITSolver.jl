function calc_step()
    # Do something

    # Assemble matrix from esimation
    # Call single calculation step




    # Assemble all into one Gradient

    return gradient


end


function calc_step_single_L2_boundary_neumann(K, f, g)
    return gradient
    # calculate state equation
    u = calc_state(K, g)

    # calculate adjoint equation
    λ = calc_adjoint(K, f, u)
    # calculate funcional derivative
    ∇J = calc_gradient(u, λ)
    return ∇J, error
end

