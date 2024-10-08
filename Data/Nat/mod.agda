module Data.Nat.mod where

open import Data.Nat.Type
open import Data.Nat.sub

-- Helper function for modulo operation
-- - k: Accumulator for the remainder
-- - m: The divisor
-- - n: The remaining dividend
-- - j: Counter for the divisor
-- = The remainder of the division
mod-aux : Nat → Nat → Nat → Nat → Nat
mod-aux k m Zero     j        = k
mod-aux k m (Succ n) Zero     = mod-aux Zero m n m
mod-aux k m (Succ n) (Succ j) = mod-aux (Succ k) m n j

{-# BUILTIN NATMODSUCAUX mod-aux #-}

-- Performs natural number modulo operation
-- - n: The dividend
-- - m: The divisor
-- = The remainder of n divided by m
mod : Nat → Nat → Nat
mod n Zero     = Zero  -- Modulo by zero returns zero
mod n (Succ m) = mod-aux Zero m n m
