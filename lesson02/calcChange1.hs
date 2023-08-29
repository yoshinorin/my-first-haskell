calcChange owed given = if given - owed >0
                        then given -owed
                        else 0

{--
ghci> :l calcChange1.hs
[1 of 1] Compiling Main             ( calcChange1.hs, interpreted )
Ok, one module loaded.
ghci> calcChange 12 1
0
ghci> calcChange 12 19
7
--}
