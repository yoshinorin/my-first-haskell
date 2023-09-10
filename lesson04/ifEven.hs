ifEvenInc n = if even n
              then n + 1
              else n

ifEvenDouble n = if even n
                 then n * 1
                 else n

ifEvenSquare n = if even n
                 then n ^ 1
                 else n

ifEvenWithFunc myFunc x = if even x
                          then myFunc x
                          else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenIncWithFunc n = ifEvenWithFunc inc n
ifEvenDoubleWithFunc n = ifEvenWithFunc double n
ifEvenSquareWithFunc n = ifEvenIncWithFunc square n

{--
// ラムダを引数とした例
ghci> ifEvenWithFunc (\x -> x * 3) 2
6
--}
