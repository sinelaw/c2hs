module Main where

import Foreign
import Foreign.C.Types

#include "issue46.h"

{#pointer *oid as Oid foreign newtype#}

instance Storable Oid where
    sizeOf _ = {#sizeof oid#}
    alignment _ = {#alignof oid#}
    peek _ = error "Can't peek: Opaque type: Oid"
    poke _ = error "Can't poke: Opaque type: Oid"
                  
{#fun func as ^ {+, `Int', `Float'} -> `Oid'#}
{#fun oid_a as ^ {`Oid'} -> `Int'#}
{#fun oid_b as ^ {`Oid'} -> `Float'#}

main :: IO ()
main = do
  obj <- func 1 2.5
  a <- oidA obj
  b <- oidB obj
  print (a, b)
