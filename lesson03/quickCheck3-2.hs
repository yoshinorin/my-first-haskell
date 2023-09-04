{-- where を使った場合 --}
doubleDouble x = dubs * 2
  where dubs = x * 2

{-- lambda にした場合 --}
doubleDoubleWithLambda x = (\dubs -> dubs * 2) (x * 2)
