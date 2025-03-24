module EITSolver


    using Gridap, GridapGmsh, SparseArrays
    using Gridap.FESpaces
    using Gridap.Geometry
    using Gridap.ReferenceFEs
    using LineSearches: BackTracking
    using Serialization

greet() = print("Hello World!")

end # module EITSolver
