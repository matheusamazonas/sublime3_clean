// SYNTAX TEST "Packages/Clean/Clean.sublime-syntax"

import Language.HB
// ^ keyword.control.import.clean
//    ^ meta.import.simple.clean

from Data.Maybe import :: Maybe
// ^ keyword.control.from.clean
//                ^ keyword.control.import.clean
//                     ^ keyword.other.double-colon.clean
//                          ^storage.type.clean

from iTasks.WF.Definition import class iTask
//                                      ^ entity.name.class.clean

from Data.GenDefault import generic gDefault
//                             ^ keyword.other.generic.clean

from Data.List import instance Foldable []
//                       ^keyword.other.instance.clean

import qualified Data.List as DL
// ^ keyword.control.import.clean
//       ^ keyword.control.qualified.clean
//                         ^ keyword.control.as.clean
//                            ^ entity.name.namespace.clean

import iTasks.Internal.SDS => qualified modify
// ^ keyword.control.import.clean
//                         ^ keyword.control.hidden.clean
//                              ^ keyword.control.qualified.clean



