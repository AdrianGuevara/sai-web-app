-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SAI.Object.PageInfo exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import SAI.InputObject
import SAI.Interface
import SAI.Object
import SAI.Scalar
import SAI.ScalarCodecs
import SAI.Union


{-| -}
startCursor : SelectionSet String SAI.Object.PageInfo
startCursor =
    Object.selectionForField "String" "startCursor" [] Decode.string


{-| -}
endCursor : SelectionSet String SAI.Object.PageInfo
endCursor =
    Object.selectionForField "String" "endCursor" [] Decode.string


{-| -}
hasNextPage : SelectionSet Bool SAI.Object.PageInfo
hasNextPage =
    Object.selectionForField "Bool" "hasNextPage" [] Decode.bool
