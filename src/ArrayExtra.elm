module ArrayExtra exposing (any)

import Array exposing (Array)
import Maybe exposing (Maybe)

any : (a -> Bool) -> Array a -> Bool
any predicate array =
    if array |> Array.isEmpty then False
    else recAny predicate 0 array


recAny : (a -> Bool) -> Int -> Array a -> Bool
recAny predicate index array =
    if (array |> Array.get index |> Maybe.map predicate |> Maybe.withDefault False) == True then True
    else if index < (array |> Array.length) then
        recAny predicate (index + 1) array
    else False

