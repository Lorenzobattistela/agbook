module Data.Bits.from-nat where

open import Data.Nat.Type
open import Data.Bits.Type
open import Data.Nat.div
open import Data.Nat.mod
open import Data.Nat.eq
open import Data.Bool.if
open import Data.Bits.reverse

-- Converts a natural number to its corresponding Bits representation.
-- The rightmost bit is the least significant.
-- - n: The natural number to convert.
-- = The Bits representation of the natural number.
from-nat : Nat → Bits
from-nat Zero = E
from-nat n = reverse (go n E)
  where
    go : Nat → Bits → Bits
    go Zero acc = acc
    go n acc =
      let remainder = mod n 2
          quotient = div n 2
      in if remainder == Zero
         then go quotient (O acc)
         else go quotient (I acc)


