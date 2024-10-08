module Data.V2.mul-scalar where

open import Data.V2.Type
open import Data.Float.Type
open import Data.Float.Operations

-- Multiplies a V2 vector by a scalar.
-- - v: The V2 vector to be multiplied.
-- - s: The scalar (Float) to multiply by.
-- = A new V2 vector with both components multiplied by the scalar.
mul-scalar : V2 → Float → V2
mul-scalar (MkV2 x y) s = MkV2 (x f* s) (y f* s)
