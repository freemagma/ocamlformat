let x = #3l

let x = #3L

let x = #3n

let x = -#3l

let x = #3.0

let x = -#3.0

let x = #3.0 + #4.0

let x = #3.0 - #4.0

let x = (#3.0 [@attr])

let x = (#3.0 + #4.0) [@attr]

let x = f #3.0 #4.0 #5.0 x y #0.

type t = float#

type t = float# * float#

type t = float# t2

type t = float #t2

type t = (int, float#) either

type t = (float#, int) either

type t = (float#, float#) either

type ('a : float64) t = 'a

type ('b, 'a : float64) t

type ('b : float64, 'a : immediate) t

type t : bits32

type t = int32#

type t = int32# * int32#

type t = int32# t2

type t = int32 #t2

type t = (int, int32#) either

type t = (int32#, int) either

type t = (int32#, int32#) either

type ('a : bits32) t = 'a

type ('b, 'a : bits32) t

type ('b : bits32, 'a : immediate) t

type t : bits64

type t = int64#

type t = int64# * int64#

type t = int64# t2

type t = int64 #t2

type t = (int, int64#) either

type t = (int64#, int) either

type t = (int64#, int64#) either

type ('a : bits64) t = 'a

type ('b, 'a : bits64) t

type ('b : bits64, 'a : immediate) t

type t : word

type t = nativeint#

type t = nativeint# * nativeint#

type t = nativeint# t2

type t = int64 #t2

type t = (int, nativeint#) either

type t = (nativeint#, int) either

type t = (nativeint#, nativeint#) either

type ('a : word) t = 'a

type ('b, 'a : word) t

type ('b : word, 'a : immediate) t

let _ = f (-#1l) (-#2l) #3l

let _ = f (-#1L) (-#2L) #3L

let _ = f (-#1n) (-#2n) #3n

let _ = f (-#1.5) (-#2.5) #3.5

let f x =
  match x with
  | -#11111111l | -#222222222l | -#333333333l | -#444444444l | -#5555555l
   | -#6666666l | -#7777777l ->
      true
  | _ -> false

let f x =
  match x with
  | -#11111111L | -#222222222L | -#333333333L | -#444444444L | -#5555555L
   | -#6666666L | -#7777777L ->
      true
  | _ -> false

let f x =
  match x with
  | -#11111111n | -#222222222n | -#333333333n | -#444444444n | -#5555555n
   | -#6666666n | -#7777777n ->
      true
  | _ -> false
