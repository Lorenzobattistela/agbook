module Data.V2.Type where

open import Data.Float.Type

-- Represents a 2D vector with float coordinates.
-- - x: The x-coordinate.
-- - y: The y-coordinate.
record V2 : Set where
  constructor MkV2
  field
    x : Float
    y : Float
