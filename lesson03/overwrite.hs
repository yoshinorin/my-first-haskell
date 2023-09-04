overwrite x = let x = 2
              in
                let x = 3
                in
                  let x = 4
                  in
                    x


{--
ghci> :l overwrite.hs
[1 of 1] Compiling Main             ( overwrite.hs, interpreted )
Ok, one module loaded.
ghci> x = 6
ghci> x
6
ghci> x = 5
ghci> x
5
--}
