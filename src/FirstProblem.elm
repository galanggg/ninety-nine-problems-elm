module FirstProblem exposing (..)

import Html exposing (text)
import Maybe

last : List a -> Maybe a
last xs =
    case xs of
        [] ->
            Nothing
        [a] ->
            Just a
        head :: rest ->
            last rest
  


main =
    case last [ 1, 2, 3, 4 ] of
        Just a ->
            text (Debug.toString a)

        Nothing ->
            text "No element found"