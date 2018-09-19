-- file: ch03/Identation.hs
{-foo = let firstDefinition = blah blah
          -- a comment-only line is treated as empty
                              continuation blah

          -- we reduce the indentation, so this is a new definition
          secondDefinition = yada yada

                             continuation yada
      in whatever-}
bar = let b = 2
          c = True
      in let a = b
         in (a, c)

foo = x
    where x = y
              where y = 2