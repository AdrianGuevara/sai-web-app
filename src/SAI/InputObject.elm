-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SAI.InputObject exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import SAI.Enum.CivilState
import SAI.Enum.Gender
import SAI.Enum.Status
import SAI.Interface
import SAI.Object
import SAI.Scalar
import SAI.ScalarCodecs
import SAI.Union


buildCreateDate : CreateDateRequiredFields -> CreateDate
buildCreateDate required =
    { day = required.day, month = required.month, year = required.year }


type alias CreateDateRequiredFields =
    { day : Int
    , month : Int
    , year : Int
    }


{-| Type for the CreateDate input object.
-}
type alias CreateDate =
    { day : Int
    , month : Int
    , year : Int
    }


{-| Encode a CreateDate into a value that can be used as an argument.
-}
encodeCreateDate : CreateDate -> Value
encodeCreateDate input =
    Encode.maybeObject
        [ ( "day", Encode.int input.day |> Just ), ( "month", Encode.int input.month |> Just ), ( "year", Encode.int input.year |> Just ) ]


buildCreateGroupInput : CreateGroupInputRequiredFields -> (CreateGroupInputOptionalFields -> CreateGroupInputOptionalFields) -> CreateGroupInput
buildCreateGroupInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { members = Absent, status = Absent }
    in
    { name = required.name, members = optionals.members, status = optionals.status }


type alias CreateGroupInputRequiredFields =
    { name : String }


type alias CreateGroupInputOptionalFields =
    { members : OptionalArgument (List (Maybe String))
    , status : OptionalArgument SAI.Enum.Status.Status
    }


{-| Type for the CreateGroupInput input object.
-}
type alias CreateGroupInput =
    { name : String
    , members : OptionalArgument (List (Maybe String))
    , status : OptionalArgument SAI.Enum.Status.Status
    }


{-| Encode a CreateGroupInput into a value that can be used as an argument.
-}
encodeCreateGroupInput : CreateGroupInput -> Value
encodeCreateGroupInput input =
    Encode.maybeObject
        [ ( "name", Encode.string input.name |> Just ), ( "members", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.members ), ( "status", Encode.enum SAI.Enum.Status.toString |> Encode.optional input.status ) ]


buildCreatePersonInput : CreatePersonInputRequiredFields -> (CreatePersonInputOptionalFields -> CreatePersonInputOptionalFields) -> CreatePersonInput
buildCreatePersonInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { email = Absent, address = Absent, phone = Absent }
    in
    { name = required.name, lastName = required.lastName, email = optionals.email, address = optionals.address, phone = optionals.phone, civilState = required.civilState, gender = required.gender, birthday = required.birthday }


type alias CreatePersonInputRequiredFields =
    { name : String
    , lastName : String
    , civilState : SAI.Enum.CivilState.CivilState
    , gender : SAI.Enum.Gender.Gender
    , birthday : CreateDate
    }


type alias CreatePersonInputOptionalFields =
    { email : OptionalArgument String
    , address : OptionalArgument String
    , phone : OptionalArgument String
    }


{-| Type for the CreatePersonInput input object.
-}
type alias CreatePersonInput =
    { name : String
    , lastName : String
    , email : OptionalArgument String
    , address : OptionalArgument String
    , phone : OptionalArgument String
    , civilState : SAI.Enum.CivilState.CivilState
    , gender : SAI.Enum.Gender.Gender
    , birthday : CreateDate
    }


{-| Encode a CreatePersonInput into a value that can be used as an argument.
-}
encodeCreatePersonInput : CreatePersonInput -> Value
encodeCreatePersonInput input =
    Encode.maybeObject
        [ ( "name", Encode.string input.name |> Just ), ( "lastName", Encode.string input.lastName |> Just ), ( "email", Encode.string |> Encode.optional input.email ), ( "address", Encode.string |> Encode.optional input.address ), ( "phone", Encode.string |> Encode.optional input.phone ), ( "civilState", Encode.enum SAI.Enum.CivilState.toString input.civilState |> Just ), ( "gender", Encode.enum SAI.Enum.Gender.toString input.gender |> Just ), ( "birthday", encodeCreateDate input.birthday |> Just ) ]


buildCreateUserInput : CreateUserInputRequiredFields -> (CreateUserInputOptionalFields -> CreateUserInputOptionalFields) -> CreateUserInput
buildCreateUserInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { group = Absent, person = Absent, status = Absent }
    in
    { username = required.username, password = required.password, levelaccess = required.levelaccess, group = optionals.group, person = optionals.person, status = optionals.status }


type alias CreateUserInputRequiredFields =
    { username : String
    , password : String
    , levelaccess : String
    }


type alias CreateUserInputOptionalFields =
    { group : OptionalArgument String
    , person : OptionalArgument String
    , status : OptionalArgument SAI.Enum.Status.Status
    }


{-| Type for the CreateUserInput input object.
-}
type alias CreateUserInput =
    { username : String
    , password : String
    , levelaccess : String
    , group : OptionalArgument String
    , person : OptionalArgument String
    , status : OptionalArgument SAI.Enum.Status.Status
    }


{-| Encode a CreateUserInput into a value that can be used as an argument.
-}
encodeCreateUserInput : CreateUserInput -> Value
encodeCreateUserInput input =
    Encode.maybeObject
        [ ( "username", Encode.string input.username |> Just ), ( "password", Encode.string input.password |> Just ), ( "levelaccess", Encode.string input.levelaccess |> Just ), ( "group", Encode.string |> Encode.optional input.group ), ( "person", Encode.string |> Encode.optional input.person ), ( "status", Encode.enum SAI.Enum.Status.toString |> Encode.optional input.status ) ]


buildUpdateGroupInput : UpdateGroupInputRequiredFields -> (UpdateGroupInputOptionalFields -> UpdateGroupInputOptionalFields) -> UpdateGroupInput
buildUpdateGroupInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { members = Absent }
    in
    { id = required.id, name = required.name, members = optionals.members }


type alias UpdateGroupInputRequiredFields =
    { id : SAI.ScalarCodecs.Id
    , name : String
    }


type alias UpdateGroupInputOptionalFields =
    { members : OptionalArgument (List (Maybe String)) }


{-| Type for the UpdateGroupInput input object.
-}
type alias UpdateGroupInput =
    { id : SAI.ScalarCodecs.Id
    , name : String
    , members : OptionalArgument (List (Maybe String))
    }


{-| Encode a UpdateGroupInput into a value that can be used as an argument.
-}
encodeUpdateGroupInput : UpdateGroupInput -> Value
encodeUpdateGroupInput input =
    Encode.maybeObject
        [ ( "id", (SAI.ScalarCodecs.codecs |> SAI.Scalar.unwrapEncoder .codecId) input.id |> Just ), ( "name", Encode.string input.name |> Just ), ( "members", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.members ) ]


buildUpdatePersonInput : UpdatePersonInputRequiredFields -> (UpdatePersonInputOptionalFields -> UpdatePersonInputOptionalFields) -> UpdatePersonInput
buildUpdatePersonInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { name = Absent, lastName = Absent, email = Absent, address = Absent, phone = Absent, civilState = Absent, gender = Absent, birthday = Absent }
    in
    { id = required.id, name = optionals.name, lastName = optionals.lastName, email = optionals.email, address = optionals.address, phone = optionals.phone, civilState = optionals.civilState, gender = optionals.gender, birthday = optionals.birthday }


type alias UpdatePersonInputRequiredFields =
    { id : SAI.ScalarCodecs.Id }


type alias UpdatePersonInputOptionalFields =
    { name : OptionalArgument String
    , lastName : OptionalArgument String
    , email : OptionalArgument String
    , address : OptionalArgument String
    , phone : OptionalArgument String
    , civilState : OptionalArgument SAI.Enum.CivilState.CivilState
    , gender : OptionalArgument SAI.Enum.Gender.Gender
    , birthday : OptionalArgument CreateDate
    }


{-| Type for the UpdatePersonInput input object.
-}
type alias UpdatePersonInput =
    { id : SAI.ScalarCodecs.Id
    , name : OptionalArgument String
    , lastName : OptionalArgument String
    , email : OptionalArgument String
    , address : OptionalArgument String
    , phone : OptionalArgument String
    , civilState : OptionalArgument SAI.Enum.CivilState.CivilState
    , gender : OptionalArgument SAI.Enum.Gender.Gender
    , birthday : OptionalArgument CreateDate
    }


{-| Encode a UpdatePersonInput into a value that can be used as an argument.
-}
encodeUpdatePersonInput : UpdatePersonInput -> Value
encodeUpdatePersonInput input =
    Encode.maybeObject
        [ ( "id", (SAI.ScalarCodecs.codecs |> SAI.Scalar.unwrapEncoder .codecId) input.id |> Just ), ( "name", Encode.string |> Encode.optional input.name ), ( "lastName", Encode.string |> Encode.optional input.lastName ), ( "email", Encode.string |> Encode.optional input.email ), ( "address", Encode.string |> Encode.optional input.address ), ( "phone", Encode.string |> Encode.optional input.phone ), ( "civilState", Encode.enum SAI.Enum.CivilState.toString |> Encode.optional input.civilState ), ( "gender", Encode.enum SAI.Enum.Gender.toString |> Encode.optional input.gender ), ( "birthday", encodeCreateDate |> Encode.optional input.birthday ) ]


buildUpdateUserInput : UpdateUserInputRequiredFields -> (UpdateUserInputOptionalFields -> UpdateUserInputOptionalFields) -> UpdateUserInput
buildUpdateUserInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { group = Absent, person = Absent }
    in
    { id = required.id, username = required.username, password = required.password, levelaccess = required.levelaccess, group = optionals.group, person = optionals.person }


type alias UpdateUserInputRequiredFields =
    { id : SAI.ScalarCodecs.Id
    , username : String
    , password : String
    , levelaccess : String
    }


type alias UpdateUserInputOptionalFields =
    { group : OptionalArgument String
    , person : OptionalArgument String
    }


{-| Type for the UpdateUserInput input object.
-}
type alias UpdateUserInput =
    { id : SAI.ScalarCodecs.Id
    , username : String
    , password : String
    , levelaccess : String
    , group : OptionalArgument String
    , person : OptionalArgument String
    }


{-| Encode a UpdateUserInput into a value that can be used as an argument.
-}
encodeUpdateUserInput : UpdateUserInput -> Value
encodeUpdateUserInput input =
    Encode.maybeObject
        [ ( "id", (SAI.ScalarCodecs.codecs |> SAI.Scalar.unwrapEncoder .codecId) input.id |> Just ), ( "username", Encode.string input.username |> Just ), ( "password", Encode.string input.password |> Just ), ( "levelaccess", Encode.string input.levelaccess |> Just ), ( "group", Encode.string |> Encode.optional input.group ), ( "person", Encode.string |> Encode.optional input.person ) ]
