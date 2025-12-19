# foundations of computer science in ocaml

## 00. [install ocaml](https://ocaml.org/docs/installing-ocaml)

* for macOS, it is simple:

```
$brew install opam
$opam init -y
$opam install ocaml-lsp-server odoc ocamlformat utop
```

* check installation

```
$utop
────────┬─────────────────────────────────────────────────────────────┬─────────
        │ Welcome to utop version 2.9.1 (using OCaml version 4.13.1)! │         
        └─────────────────────────────────────────────────────────────┘         

Type #utop_help for help about using utop.

─( 13:27:19 )─< command 0 >──────────────────────────────────────{ counter: 0 }─
utop # 2+1
;;
- : int = 3
─( 13:27:19 )─< command 1 >──────────────────────────────────────{ counter: 0 }─
utop # #quit;;
```

Use ```#quit;;``` or ```CTRL+D``` to exit UTop.

## 01. [hello](https://ocaml.org/docs/your-first-program)

```
$opam exec -- dune init proj hello
$cd hello
$opam exec -- dune build
$opam exec -- dune exec hello
Hello, World!
```

the [main.ml](./hello/bin/main.ml) is very simple:

```ocaml
let () = print_endline "Hello, World!"
```

## 02. recursion and complexity

check the log files chronically.

```ocaml
utop # #use "./focs-ocaml/ml/01npower.ml" ;;
val npower : float -> int -> float = <fun>
─( 14:29:14 )─< command 14 >─────────────────────────────────────{ counter: 0 }─
utop # npower 2.0 3 ;;
- : float = 8.
```

* ```#use "some.ml"``` in utop or ```ocaml file.ml``` in the shell

```ocaml
$cat 00hello.ml 
let () = print_endline "Hello, world!"
$ocaml 00hello.ml 
Hello, world!
```

* another way is ```$chmod +x 01hello.ml && ./01hello.ml```.

## 03. lists and polymorphism

a list is a finite sequence of elements. the elements can be any type but all elements must have the same type. the order of the list is important. two primitives for list are ```[]``` and ```::```. ```x::l``` is the list with head x and tail l.

* append ```@``` and ```List.rev list```

tuples are fixed size but heterogeneous and comma as separator instead of semicolon for list.

```ocaml
utop # List.rev [(1, "one"); (2, "two")] ;;
- : (int * string) list = [(2, "two"); (1, "one")]
```

* sum

```ocaml
utop # let rec sum n =
  match n with
    | 0 -> 0
    | _ -> n + sum (n-1) ;;
val sum : int -> int = <fun>
─( 10:38:22 )─< command 1 >──────────────────────────────────────{ counter: 0 }─
utop # sum 10 ;;
- : int = 55
```

* up_to

```ocaml
utop # let rec up_to m n =
  if m > n then []
  else m :: up_to (m+1) n ;;
val up_to : int -> int -> int list = <fun>
─( 10:45:15 )─< command 7 >──────────────────────────────────────{ counter: 0 }─
utop # up_to 2 5 ;;
- : int list = [2; 3; 4; 5]
```

* nlength

```ocaml
utop # #use "03nlength.ml" ;;
val nlength : 'a list -> int = <fun>
─( 10:50:28 )─< command 4 >──────────────────────────────────────{ counter: 0 }─
utop # nlength [3; 5; 7] ;;
- : int = 3
```

## 04. more lists and making changes

* flatten

```ocaml
utop # let rec flatten = function 
  | [] -> []
  | l :: ls -> l @ flatten ls ;;
val flatten : 'a list list -> 'a list = <fun>
─( 10:20:37 )─< command 1 >──────────────────────────────────────{ counter: 0 }─
utop # flatten [[1;2]; [3;4]];;
- : int list = [1; 2; 3; 4]
```

* list operations

```ocaml
utop # let a = [2] ;;
val a : int list = [2]
─( 10:21:42 )─< command 3 >──────────────────────────────────────{ counter: 0 }─
utop # let b = [3; 4; 5] ;;
val b : int list = [3; 4; 5]
─( 10:23:01 )─< command 4 >──────────────────────────────────────{ counter: 0 }─
utop # a @ b ;;
- : int list = [2; 3; 4; 5]
─( 10:23:17 )─< command 5 >──────────────────────────────────────{ counter: 0 }─
utop # 2::b ;;
- : int list = [2; 3; 4; 5]
```

* take and drop for list

```ocaml
utop # #use "./ml/04takedrop.ml" ;;
val take : 'a list * int -> 'a list = <fun>
val drop : 'a list * int -> 'a list = <fun>
─( 10:32:03 )─< command 11 >─────────────────────────────────────{ counter: 0 }─
utop # let a = [1; 2; 3; 4; 5; 6] ;;
val a : int list = [1; 2; 3; 4; 5; 6]
─( 10:35:08 )─< command 12 >─────────────────────────────────────{ counter: 0 }─
utop # let x = take (a, 3) ;;
val x : int list = [1; 2; 3]
─( 10:35:32 )─< command 13 >─────────────────────────────────────{ counter: 0 }─
utop # let y = drop (a, 3) ;;
val y : int list = [4; 5; 6]
```
 
## 05. sorting

## links

* [Univ. Cambridge Foundations of Computer Science](https://www.cl.cam.ac.uk/teaching/2526/FoundsCS/)

* [lecturer's notes from Dr. Jon Ludlam](https://jon.recoil.org/blog/2025/11/foundations-of-computer-science.html)

* [project Jupyter github](https://github.com/jupyter)

* [book pdf: OCaml from very beginning](./book/mlbook.pdf)

* [book online: Ocaml from very beginning](https://ocaml-book.com/)

* [online book: OCaml from the ground up](https://ocamlbook.org/)

