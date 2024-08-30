module Tree.Main where

-- Defines a binary tree datatype.
-- - A: the type of values stored in the tree.
data Tree (A : Set) : Set where
  node : A → Tree A → Tree A → Tree A
  leaf : Tree A
