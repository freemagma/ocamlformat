let f a b c = 1

let f (local_ a) ~foo:(local_ b) ?foo:(local_ c = 1) ~(local_ d) = ()

let f ~(local_ x) ~(local_ y : string) ?(local_ z : string) = ()

let xs = [(fun (local_ a) (type b) ~(local_ c) -> local_ 1)]

let xs = [(fun (local_ a) (type b) ~(local_ c) -> exclave_ 1)]

let f () = local_
  let a = [local_ 1] in
  let local_ r = 1 in
  let local_ f : 'a. 'a -> 'a = fun x -> local_ x in
  let local_ g a b c : int = 1 in
  let () = g (local_ fun () -> ()) in
  local_ "asdfasdfasdfasdfasdfasdfasdf"

let f () = exclave_
  let a = [exclave_ 1] in
  let local_ r = 1 in
  let local_ f : 'a. 'a -> 'a = fun x -> exclave_ x in
  let local_ g a b c : int = 1 in
  let () = g (exclave_ (fun () -> ())) in
  exclave_ "asdfasdfasdfasdfasdfasdfasdf"

type 'a r = {mutable a: 'a; b: 'a; global_ c: 'a}

type 'a r =
  | Foo of global_ 'a
  | Bar of 'a * global_ 'a
  | Baz of global_ int * string * global_ 'a

type ('a, 'b) cfn =
  a:local_ 'a -> ?b:local_ b -> local_ 'a -> (int -> local_ 'b)

let _ = local_ ()

let _ = exclave_ ()

let () = local_ x

let () = exclave_ x

let {b} = local_ ()

let {b} = exclave_ ()

let () = local_ r

let () = exclave_ r

let local_ x : string = "hi"
let (x : string) = local_ "hi"

let (x : string) = exclave_ "hi"

let x = local_ ("hi" : string)

let x = exclave_ ("hi" : string)
let x : 'a . 'a -> 'a = local_ "hi"
let x : 'a . 'a -> 'a = exclave_ "hi"
let local_ f : 'a. 'a -> 'a = "hi"

let foo () =
  if true then (local_ ());
  ()

let[@ocaml.local] upstream_local_attr_long x = x
module type S = S -> S -> S

let[@ocaml.local never] upstream_local_attr_never_long x = x

let[@ocaml.local always] upstream_local_attr_always_long x = x

let[@ocaml.local maybe] upstream_local_attr_maybe_long x = x

let[@local] upstream_local_attr_short x = x

let[@local never] upstream_local_attr_never_short x = x

let[@local always] upstream_local_attr_always_short x = x

let[@local maybe] upstream_local_attr_maybe_short x = x

let f x = (* a *) (* b *) local_ (* c *) (* d *)
  let y = 1 in
  x + y

let f x = (* a *) (* b *) exclave_ (* c *) (* d *)
  let y = 1 in
  x + y

let x = (* a *) (* b *) local_ (* c *) (* d *)
  let y = 1 in
  y

let x = (* a *) (* b *) exclave_ (* c *) (* d *)
  let y = 1 in
  y

module type S = S -> S -> S
(* this is here to make sure we pass the AST equality checks even when the
   extended AST is different *)

let f ((* a *) (* b *)local_ (* c *) (* d *)a) ~foo:((* e *) (* f *)local_(* g *) (* h *) b) ?foo:(local_ c = 1) ~(local_ d) = ()
type 'a r = {mutable a: 'a; b: 'a; (* a *) (* b *)global_ (* c *) (* d *)c: 'a}

type 'a r =
  | Foo of (* a *) (* b *)global_(* c *) (* d *) 'a
  | Bar of 'a * (* e *) (* f *)global_ (* g *) (* h *)'a
  | Baz of global_ int * string * (* i *) (* j *) global_ (* k *) (* l *)'a
