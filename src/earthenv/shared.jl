"""
    EarthEnv{Union{HabitatHeterogeneity,LandCover}} <: RasterDataSource

Data from the `EarthEnv` including `HabitatHeterogeneity` and `LandCover`

See: [www.earthenv.org](http://www.earthenv.org/)
"""
struct EarthEnv{X} <: RasterDataSource end

rasterpath(::Type{EarthEnv}) = joinpath(rasterpath(), "EarthEnv")
rasterpath(::Type{EarthEnv{X}}) where {X} = joinpath(rasterpath(EarthEnv), _pathsegment(X))

rasterurl(::Type{EarthEnv}) = URI(scheme="https", host="data.earthenv.org")
rasterurl(::Type{EarthEnv{X}}) where {X} = joinpath(rasterurl(EarthEnv), _pathsegment(X))
