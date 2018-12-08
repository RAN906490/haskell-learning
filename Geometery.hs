module Geometry (
cubeVolume,
sphereVolume
) where

cubeVolume :: Float -> Float
cubeVolume x = x * x * x
sphereVolume :: Float -> Float
sphereVolume r = (4.0/3.0) * pi * (r ^ 3)
