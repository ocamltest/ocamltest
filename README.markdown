ocamltest
=========
This is a small unit test framework for OCaml.

Building pre-requisites
-----------------------
ocamltest requires OMake to build. You can install OMake with

    sudo aptitude install omake

on Ubuntu. Otherwise, refer to the
[OMake homepage](http://omake.metaprl.org/index.html).

Building instructions
---------------------
Run omake in the directory of this README file:

    omake

Installation
------------
To use the package in your OCaml projects, install ocamltest by running the
following command:

    sudo omake install

Using ocamltest
---------------
When compiling your OCaml project, use ocamlfind with the directive
'-package ocamltest', like this:

    ocamlfind ocamlc -package ocamltest my_src.ml
