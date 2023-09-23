import Data.List

names = [
  ("Ian", "Curtis"),
  ("Bernard", "Sumner"),
  ("Peter", "Hook"),
  ("Stephen", "Morris"),
  ("Stephen", "Morris"),
  ("Hogege", "Morris")]

compareLastNamesQC name1 name2 = if lastName1 > lastName2
                                 then GT
                                 else if lastName1 < lastName2
                                      then LT
                                      else if firstName1 > firstName2
                                        then GT
                                        else if firstName1 < firstName2
                                          then LT
                                          else EQ

  where firstName1 = fst name1
        firstName2 = fst name2
        lastName1 = snd name1
        lastName2 = snd name2

{--
ghci> sortBy compareLastNamesQC names
[("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris"),("Bernard","Sumner")]
--}
