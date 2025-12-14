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

## links

* [Univ. Cambridge Foundations of Computer Science](https://www.cl.cam.ac.uk/teaching/2526/FoundsCS/)

* [lecturer's notes from Dr. Jon Ludlam](https://jon.recoil.org/blog/2025/11/foundations-of-computer-science.html)

* [project Jupyter github](https://github.com/jupyter)

* [book: OCaml from very beginning](./book/mlbook.pdf)

* [online book: OCaml from the ground up](https://ocamlbook.org/)

