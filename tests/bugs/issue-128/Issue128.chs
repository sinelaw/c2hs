module Main where

import Foreign.C.Types
import Foreign.Marshal.Utils

#include "issue128.h"

{#fun f1 as ^ {`Int', `Bool'} -> `Int'#}
{#fun f2 as ^ {`Int'} -> `Bool'#}

-- {#pointer tststruct as TstStruct foreign finalizer free_tststruct newtype#}
-- {#fun make_tststruct as makeTstStruct {`Int'} -> `TstStruct'#}
-- {#fun mod_tststruct as modTstStruct {`TstStruct', `Int', `Bool'} -> `()'#}

main :: IO ()
main = do
  f1 4 True >>= print
  f1 4 False >>= print
  f2 4 >>= print
  f2 0 >>= print
  -- s <- makeTstStruct 10
  -- {#get tststruct->a#} s >>= print
  -- {#get tststruct->b#} s >>= print
  -- modTstStruct s 2 True
  -- {#get tststruct->a#} s >>= print
  -- {#get tststruct->b#} s >>= print
  -- modTstStruct s 5 False
  -- {#get tststruct->a#} s >>= print
  -- {#get tststruct->b#} s >>= print