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

## links

* [Univ. Cambridge Foundations of Computer Science](https://www.cl.cam.ac.uk/teaching/2526/FoundsCS/)

* [lecturer's notes from Dr. Jon Ludlam](https://jon.recoil.org/blog/2025/11/foundations-of-computer-science.html)

* [project Jupyter github](https://github.com/jupyter)


