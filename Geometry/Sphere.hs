module Geometry.Sphere(
 volume
)
volume :: Float -> Float
volume r = (4.0/3.0) * pi * (r ^ 3)
