calcChange owed given = if change >0
                        then change
                        else 0
  where                          -- where はアドホックな変数。一度だけ計算される。宣言は使用する関数の直後で行う。
    change = given - owed

{--
ghci> :l calcChange2.hs
[1 of 1] Compiling Main             ( calcChange1.hs, interpreted )
Ok, one module loaded.
ghci> calcChange 12 1
0
ghci> calcChange 12 19
7
--}
