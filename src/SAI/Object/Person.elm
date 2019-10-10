-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SAI.Object.Person exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import SAI.Enum.CivilState
import SAI.Enum.Gender
import SAI.Enum.Progress
import SAI.Enum.SocialCategory
import SAI.Enum.Status
import SAI.InputObject
import SAI.Interface
import SAI.Object
import SAI.Scalar
import SAI.ScalarCodecs
import SAI.Union


{-| -}
id : SelectionSet SAI.ScalarCodecs.Id SAI.Object.Person
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (SAI.ScalarCodecs.codecs |> SAI.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
name : SelectionSet String SAI.Object.Person
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| -}
lastName : SelectionSet String SAI.Object.Person
lastName =
    Object.selectionForField "String" "lastName" [] Decode.string


{-| -}
fullName : SelectionSet String SAI.Object.Person
fullName =
    Object.selectionForField "String" "fullName" [] Decode.string


{-| -}
email : SelectionSet (Maybe String) SAI.Object.Person
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


{-| -}
address : SelectionSet (Maybe String) SAI.Object.Person
address =
    Object.selectionForField "(Maybe String)" "address" [] (Decode.string |> Decode.nullable)


{-| -}
phone : SelectionSet (Maybe String) SAI.Object.Person
phone =
    Object.selectionForField "(Maybe String)" "phone" [] (Decode.string |> Decode.nullable)


{-| -}
socialCategory : SelectionSet SAI.Enum.SocialCategory.SocialCategory SAI.Object.Person
socialCategory =
    Object.selectionForField "Enum.SocialCategory.SocialCategory" "socialCategory" [] SAI.Enum.SocialCategory.decoder


{-| -}
civilState : SelectionSet SAI.Enum.CivilState.CivilState SAI.Object.Person
civilState =
    Object.selectionForField "Enum.CivilState.CivilState" "civilState" [] SAI.Enum.CivilState.decoder


{-| -}
gender : SelectionSet SAI.Enum.Gender.Gender SAI.Object.Person
gender =
    Object.selectionForField "Enum.Gender.Gender" "gender" [] SAI.Enum.Gender.decoder


{-| -}
birthday : SelectionSet decodesTo SAI.Object.Date -> SelectionSet decodesTo SAI.Object.Person
birthday object_ =
    Object.selectionForCompositeField "birthday" [] object_ identity


{-| -}
age : SelectionSet (Maybe Int) SAI.Object.Person
age =
    Object.selectionForField "(Maybe Int)" "age" [] (Decode.int |> Decode.nullable)


{-| -}
progress : SelectionSet SAI.Enum.Progress.Progress SAI.Object.Person
progress =
    Object.selectionForField "Enum.Progress.Progress" "progress" [] SAI.Enum.Progress.decoder


{-| -}
status : SelectionSet SAI.Enum.Status.Status SAI.Object.Person
status =
    Object.selectionForField "Enum.Status.Status" "status" [] SAI.Enum.Status.decoder
