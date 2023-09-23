
-- 私書箱に送付する文字列を生成する関数
addressLetter name location = locationFunc name
  where locationFunc = getLocationFunction location

getLocationFunction location = case location of -- location の値を調べる case
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> (fst name) ++ " " ++ (snd name))

-- サンフランシスコ私書箱向けの特殊な処理
sfOffice name = if lastName < "L"
                then nameText
                     ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText
                     ++ " - PO Box 1010 - San Francisco, CA, 94109"

  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

-- ニューヨーク私書箱向けの特殊な処理
nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
  where nameText = (fst name) ++ " " ++ (snd name)

-- リノ（ネバダ州の都市）私書箱向けの特殊な処理
renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where nameText = snd name

{--
ghci> addressLetter ("Bob", "Smith") "ny"
"Bob Smith: PO Box 789 - New York, NY, 10013"

ghci> addressLetter ("Bob", "Smith") "sf"
"Bob Smith - PO Box 1010 - San Francisco, CA, 94109"

ghci> addressLetter ("Bob", "Smith") "reno"
"Smith - PO Box 456 - Reno, NV 89523"

ghci> addressLetter ("Bob", "Smith") "hogehoge"
"Bob Smith"
--}
