// SYNTAX TEST "Packages/Clean/Clean.sublime-syntax"

// ------------- Imports -------------

import Language.HB
// ^ keyword.control.import.clean
//    ^ meta.import.simple.clean

from Data.Maybe import :: Maybe
// ^ keyword.control.from.clean
//                ^ keyword.control.import.clean
//                     ^ keyword.other.double-colon.clean
//                          ^ storage.type.clean

from iTasks.WF.Definition import class iTask
//                                      ^ entity.name.class.clean

from Data.GenDefault import generic gDefault
//                             ^ keyword.other.generic.clean

from Data.List import instance Foldable [Int]
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                      ^ storage.type.clean
//                                          ^ storage.type.clean

from Data.List import instance Foldable {!Int!}
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                       ^ storage.type.clean
//                                            ^ storage.type.clean

from Data.List import instance Foldable Maybe
//                       ^ keyword.other.instance.clean
//                                ^ entity.name.class.clean
//                                       ^ storage.type.clean

import qualified Data.List as DL
// ^ keyword.control.import.clean
//       ^ keyword.control.qualified.clean
//                         ^ keyword.control.as.clean
//                            ^ entity.name.namespace.clean

import iTasks.Internal.SDS => qualified modify
// ^ keyword.control.import.clean
//                         ^ keyword.control.hidden.clean
//                              ^ keyword.control.qualified.clean

// ------------- ADTs -------------

:: Abstract a
// <- keyword.other.double-colon.clean
//   ^ entity.name.type.clean
//^ meta.definition.type.clean
//         ^ meta.definition.type.clean
//          ^ variable.parameter.clean


// ------------- Instances -------------

instance MyClass .[!Int!] where
// ^ keyword.other.instance.clean
//         ^ entity.name.class.clean
//               ^ storage.type.clean
//                         ^ keyword.other.where.clean





