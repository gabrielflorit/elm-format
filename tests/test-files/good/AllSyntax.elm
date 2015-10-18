module AllSyntax (fn, tuple, Type, Union(A,B,C), Union2(..)) where

{-| An example of all valid Elm syntax.

# Section
@docs fn
-}

import String
import Signal exposing (foldp, map)
import Json.Decode as Json
import List exposing (..)


type alias Type =
    String


type alias TypeWithArgs a b c =
    List (a, b, { field : c })


type alias MoreTypes x y z =
    { x | field : y, rec : { z : z }, fn : (y -> (String -> x)) }


{-| A function.
-}
fn =
    "XYZZY"


annotatedFn : String
annotatedFn =
    "XYZZY"


inlinePipeline =
    1 |> (+) 2


tuple =
    (1, 2)


commentedLiterals =
    ({- int -} 1, {- float -} 0.1, {- char -} 'c', {- string -} "str", {- boolean -} True)


infixOperator =
    1 + 2 * 3 / 4 // 5 |> (+) 0


commentedInfixOperator =
    1 {- plus -} + 2


unaryOperator a =
    -(1) + -2 + -a


functionWithParam a =
    a


functionParameters a b (t,s,_,(t',s',_,(t'',s''),{x',y'})) {x,y} _ =
    ()


fnAsLambda =
    (\a -> a)


fnAsUnparenthesizedLambda =
    \arg -> arg


multiArgLambda =
    \a b (t,s,_,(t',s',_,(t'',s''),{x',y'})) {x,y} _ -> \c -> (\d -> ())


parenthesizedExpressions =
    (1 + (2 * 3) / 4) |> ((+) 0)
