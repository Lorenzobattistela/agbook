module Data.Nat.mul where

open import Data.Nat.Type
open import Data.Nat.add

-- Multiplication of nats.
-- - m: The 1st nat.
-- - n: The 2nd nat.
-- = The product of m and n.
mul : Nat → Nat → Nat
mul Zero     n = Zero
mul (Succ m) n = add n (mul m n)

_*_ : Nat → Nat → Nat
_*_ = mul

{-# BUILTIN NATTIMES _*_ #-}
