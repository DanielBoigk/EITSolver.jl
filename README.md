# EIT (Electrical Impedance Tomography) Inverse Solver

This is an EIT solver for Julia that receives boundary pairs and meshes and uses Gridap.jl to calculate a solution.
This solver is using adjoint methods to calculate the gradient.
It has some build in basic regularization capability.
