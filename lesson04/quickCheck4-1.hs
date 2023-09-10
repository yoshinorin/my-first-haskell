ifEvenQC myFunc x = if even x
                    then myFunc x
                    else x

{--
ghci> ifEvenQC (\x -> x^3) 2
8
--}
