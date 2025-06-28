module MaybeExtra exposing (tryThisWith, tryThis)

import Maybe exposing (Maybe)

tryThisWith : Maybe a -> (b -> a) -> b -> a
tryThisWith maybe action parameter =
    case maybe of
        Just value -> value
        Nothing -> parameter |> action


tryThis : Maybe a -> (() -> a) -> a
tryThis maybe action =
    case maybe of
        Just value -> value
        Nothing -> () |> action