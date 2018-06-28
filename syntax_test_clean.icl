// SYNTAX TEST "Packages/Clean/Clean.sublime-syntax"

// ------------- Imports -------------

import Language.HB
// ^ keyword.control.import.clean
//    ^ meta.import.simple.clean
//        ^ entity.name.namespace.clean

import module1, module2
// ^ keyword.control.import.clean
//    ^ meta.import.simple.clean
//        ^ entity.name.namespace.clean
//                ^ entity.name.namespace.clean


from Data.Maybe import :: Maybe
// ^ keyword.control.from.clean
//        ^ entity.name.namespace.clean
//                ^ keyword.control.import.clean
//                     ^ keyword.other.double-colon.clean
//                          ^ storage.type.clean

from iTasks.WF.Definition import class iTask
//        ^ entity.name.namespace.clean
//                                      ^ entity.name.class.clean

from Data.GenDefault import generic gDefault
//        ^ entity.name.namespace.clean
//                             ^ keyword.other.generic.clean

from Data.List import instance Foldable [Int]
//        ^ entity.name.namespace.clean
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                      ^ storage.type.clean
//                                          ^ storage.type.clean

from Data.List import instance Foldable {!Int!}
//        ^ entity.name.namespace.clean
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                       ^ storage.type.clean
//                                            ^ storage.type.clean

from Data.List import instance Foldable Maybe
//        ^ entity.name.namespace.clean
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                       ^ storage.type.clean

from Data.List import tail, instance Foldable [], replaceInList, replicate
// ^ keyword.control.from.clean
//        ^ entity.name.namespace.clean
//                ^ keyword.control.import.clean
//                             ^ keyword.other.instance.clean
//                                     ^ entity.name.class.clean
//                                            ^ storage.type.clean
//                                                    ^ source.clean
//                                                                  ^ source.clean

import qualified Data.List as DL
// ^ keyword.control.import.clean
//       ^ keyword.control.qualified.clean
//                 ^ entity.name.namespace.clean
//                         ^ keyword.control.as.clean
//                            ^ entity.name.namespace.clean

import iTasks.Internal.SDS => qualified modify
// ^ keyword.control.import.clean
//        ^ entity.name.namespace.clean
//                         ^ keyword.control.hidden.clean
//                              ^ keyword.control.qualified.clean

// ------------- ADTs -------------

:: Abstract a
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//^ meta.definition.type.clean
//         ^ meta.definition.type.clean
//          ^ variable.parameter.clean

//<- source.clean

:: ExtADT = ..
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//        ^ keyword.other.clean
//          ^ keyword.other.clean

//<- source.clean

:: ExtAdt | A Int | B Bool
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//        ^ keyword.other.clean
//          ^ entity.name.constructor.clean
//             ^ storage.type.clean
//                ^ keyword.other.clean
//                  ^ entity.name.constructor.clean
//                     ^ storage.type.clean

//<- source.clean

:: SimpleType = Cons1 | Cons2 Int 
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//                ^ entity.name.constructor.clean
//                    ^ keyword.other.clean
//                         ^ entity.name.constructor.clean
//                             ^ storage.type.clean

//<- source.clean

:: Type a b c = E.a: (==.) infix 4  (Expression a)  (Expression a) &  == a | Cons7 Bool
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//      ^ variable.parameter.clean
//        ^ variable.parameter.clean
//          ^ variable.parameter.clean
//              ^ keyword.existential.clean
//                ^ variable.parameter.clean
//                    ^ entity.name.constructor.infix.clean
//                           ^ keyword.other.infix.clean
//                                ^ meta.definition.type.clean
//                               ^ constant.numeric.integer.clean
//                                       ^ storage.type.clean
//                                              ^ variable.parameter.clean
//                                                ^ meta.definition.type.clean
//                                                    ^ storage.type.clean
//                                                      ^ storage.type.clean
//                                                              ^ variable.parameter.clean
//                                                                 ^ keyword.other.given-that.clean
//                                                                  ^ meta.exist_constraint.clean
//                                                                     ^ entity.name.class.clean
//                                                                       ^ variable.parameter.clean
//                                                                         ^ keyword.other.clean
//                                                                             ^ entity.name.constructor.clean
//                                                                                  ^ storage.type.clean

//<- source.clean


:: Step v t = E.p.q: Cond (v Bool q) (v t p) | E.p: Ever (v t p)
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//      ^ variable.parameter.clean
//        ^ variable.parameter.clean
//            ^ keyword.existential.clean
//              ^ variable.parameter.clean
//                ^ variable.parameter.clean
//                    ^ entity.name.constructor.clean
//                         ^ variable.parameter.clean
//                            ^ storage.type.clean
//                                ^ variable.parameter.clean
//                                    ^ variable.parameter.clean
//                                      ^ variable.parameter.clean
//                                        ^ variable.parameter.clean
//                                           ^ keyword.other.clean
//                                             ^ keyword.existential.clean
//                                               ^ variable.parameter.clean
//                                                   ^ entity.name.constructor.clean
//                                                        ^ variable.parameter.clean
//                                                          ^ variable.parameter.clean
//                                                            ^ variable.parameter.clean
class assign v where			// This example is here to test for a new declaration after an existential ADT
// ^ keyword.other.class.clean
//      ^ entity.name.class.clean
//           ^ variable.parameter.clean
//               ^ keyword.other.where.clean
  test :: a -> Bool
 // ^ entity.name.function.clean
 //    ^ keyword.other.double-colon.clean
 //       ^ variable.parameter.clean
 //         ^ keyword.other.arrow.clean
 //             ^ storage.type.clean 

//<- source.clean

:: Set :== Expression [Int]
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//              ^ storage.type.clean
//                      ^ storage.type.clean

//<- source.clean

:: Sem a = S (State -> (a, State))
// <- keyword.other.double-colon.clean
//  ^ entity.name.type.clean
//     ^ variable.parameter.clean
//       ^ keyword.other.clean
//         ^ entity.name.constructor.clean
//             ^ storage.type.clean
//                  ^ keyword.other.arrow.clean
//                      ^ variable.parameter.clean
//                        ^ meta.constructor.clean
//                           ^ storage.type.clean
//                    ^ meta.constructor.clean

//<- source.clean

:: MyType a
//<-  keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//        ^ variable.parameter.clean
    = Cons1 Char
//     ^ entity.name.constructor.clean
//           ^ storage.type.clean
    | Cons2 Int Bool a
//  ^ keyword.other.clean
//      ^ entity.name.constructor.clean
//           ^ storage.type.clean
//               ^ storage.type.clean
//                   ^ variable.parameter.clean

//<- source.clean

:: TCPSettings = { host :: String , port :: Int }
//<- keyword.other.double-colon.clean
//    ^ entity.name.type.clean
//             ^ keyword.other.clean
//                  ^ entity.name.function.clean
//                      ^ keyword.other.double-colon.clean
//                            ^ storage.type.clean
//                                  ^ entity.name.function.clean
//                                       ^ keyword.other.double-colon.clean
//                                          ^ storage.type.clean
//                                            ^ meta.definition.type.clean

//<- source.clean

:: BCShare =
//<- keyword.other.double-colon.clean
//    ^ entity.name.type.clean
//         ^ keyword.other.clean
    { sdsi :: Int
//     ^ entity.name.function.clean
//         ^ keyword.other.double-colon.clean
//             ^ storage.type.clean
    , sdsname :: String
//       ^ entity.name.function.clean
//            ^ keyword.other.double-colon.clean
//                 ^ storage.type.clean
    //TODO fix lens
//    ^ comment.line.clean 
    , sdsval :: Either BCValue (SDS Bool BCValue BCValue)
//       ^ entity.name.function.clean
//           ^ keyword.other.double-colon.clean
//                 ^ storage.type.clean
//                       ^ storage.type.clean
//                               ^ storage.type.clean
//                                   ^ storage.type.clean
//                                         ^ storage.type.clean
//                                                 ^ storage.type.clean
    }
//<- meta.definition.type.clean

//<- source.clean

// ------------- Instances -------------

instance MyClass .[!Int!] where
// ^ keyword.other.instance.clean
//         ^ entity.name.class.clean
//               ^ storage.type.clean
//                         ^ keyword.other.where.clean

instance toByteCode Heartbeat, (SP02, Bool)
// ^ keyword.other.instance.clean
//           ^ entity.name.class.clean
//                     ^ storage.type.clean
//                               ^ storage.type.clean
//                                    ^ storage.type.clean

instance toByteCode Int, Bool, Char, Long, String, /*Button,*/ BCValue, ()
// ^ keyword.other.instance.clean
//           ^ entity.name.class.clean
//                   ^ storage.type.clean
//                        ^ storage.type.clean
//                              ^ storage.type.clean
//                                    ^ storage.type.clean
//                                          ^ storage.type.clean
//                                                     ^ comment.block.clean
//                                                               ^ storage.type.clean
//                                                                      ^ storage.type.clean

instance toByteCode [a] | toByteCode a where toByteCode x = concat $ map toByteCode x
// ^ keyword.other.instance.clean
//           ^ entity.name.class.clean
//                   ^ variable.parameter.clean
//                      ^ keyword.other.given-that.clean
//                           ^ entity.name.class.clean
//                                   ^ variable.parameter.clean
//                                       ^ keyword.other.where.clean

// ------------- Functions -------------

print :: (v LCD Expr) (v t p) -> v Int Expr  | stringQuotes a // returns bytes written
// ^ entity.name.function.clean
//     ^ keyword.other.double-colon.clean
//        ^ variable.parameter.clean
//           ^ storage.type.clean
//               ^ storage.type.clean
//                     ^ variable.parameter.clean
//                       ^ variable.parameter.clean
//                         ^ variable.parameter.clean
//                               ^ variable.parameter.clean
//                                  ^ storage.type.clean
//                                     ^ storage.type.clean
//                                           ^ keyword.other.given-that.clean
//                                               ^ entity.name.class.clean
//                                                          ^ variable.parameter.clean
//                                                                 ^ comment.line.clean


// ------------- Derive -------------

derive gText Type1, Type2, /*comment*/ Type3 /*comment*/
// ^ keyword.other.derive.clean
//      ^ entity.name.function.clean
//            ^ storage.type.clean
//                   ^ storage.type.clean
//                             ^ comment.block.clean
//                                      ^ storage.type.clean
//                                               ^ comment.block.clean

//<- source.clean

derive class iTasks Type1, Type2, /*comment*/ Type3 /*comment*/
// ^ keyword.other.derive.clean
//      ^ keyword.other.class.clean
//             ^ entity.name.class.clean
//                   ^ storage.type.clean
//                           ^ storage.type.clean
//                                    ^ comment.block.clean
//                                             ^ storage.type.clean
//                                                      ^ comment.block.clean

//<- source.clean

// ------------- Class -------------

class toString t where
//<- keyword.other.class.clean
//      ^ entity.name.class.clean
//             ^ variable.parameter.clean
//                ^ keyword.other.where.clean
    toString :: t -> String
//     ^ entity.name.function.clean
//           ^ keyword.other.double-colon.clean
//              ^ variable.parameter.clean
//                ^ keyword.other.arrow.clean
//                     ^ storage.type.clean

class print t | toString t where
//<- keyword.other.class.clean
//      ^ entity.name.class.clean
//          ^ variable.parameter.clean
//            ^ keyword.other.given-that.clean
//                 ^ entity.name.class.clean
//                       ^ variable.parameter.clean
//                           ^ keyword.other.where.clean
    print :: t -> String
//    ^ entity.name.function.clean
//        ^ keyword.other.double-colon.clean
//           ^ variable.parameter.clean
//             ^ keyword.other.arrow.clean
//                  ^ storage.type.clean

class == t :: t t -> Bool
//<- keyword.other.class.clean
//    ^ entity.name.class.clean
//       ^ variable.parameter.clean
//         ^ keyword.other.double-colon.clean
//            ^ variable.parameter.clean
//              ^ variable.parameter.clean
//                ^ keyword.other.arrow.clean
//                    ^ storage.type.clean

class stringQuotes t | type t :: (Code t p) -> Code t p
//<- keyword.other.class.clean
//        ^ entity.name.class.clean
//                 ^ variable.parameter.clean
//                   ^ keyword.other.given-that.clean
//                      ^ entity.name.class.clean
//                          ^ variable.parameter.clean
//                             ^ keyword.other.double-colon.clean
//                                 ^ storage.type.clean
//                                     ^ variable.parameter.clean
//                                       ^ variable.parameter.clean
//                                          ^ keyword.other.arrow.clean
//                                               ^ storage.type.clean
//                                                  ^ variable.parameter.clean
//                                                    ^ variable.parameter.clean

//<- source.clean












