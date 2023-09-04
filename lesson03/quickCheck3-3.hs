overwriteLambda x = (\x -> (\x -> \x -> 4)3)2

{--
ghci> :l quickCheck3-3.hs
[1 of 1] Compiling Main             ( quickCheck3-3.hs, interpreted )
Ok, one module loaded.
ghci> x = 6
ghci> x
6
ghci> x = 5
ghci> x
5
ghci>
--}
