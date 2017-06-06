{-# LANGUAGE GADTs, DataKinds, TypeOperators, PolyKinds, PartialTypeSignatures #-}

module HList where

data HList tys where
  Nil :: HList '[]
  (:>) :: h -> HList t -> HList (h ': t)
infixr 5 :>
  
data Elem list elt where
  EZ :: Elem (x ': xs) x
  ES :: Elem xs x -> Elem (y ': xs) x
