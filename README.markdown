ocamltest
=========
This is a small unit test framework for OCaml.

Building pre-requisites
-----------------------
ocamltest requires OMake and ocamlfind to build. You can install both with

    sudo aptitude install omake ocaml-findlib

on Ubuntu. For other operating systems, please refer to the
[OMake homepage](http://omake.metaprl.org/index.html) and
the [Findlib homepage](http://projects.camlcity.org/projects/findlib.html).

Building instructions
---------------------
Run omake in the directory of this README file:

    omake

Installation
------------
To use the package in your OCaml projects, install ocamltest by running:

    sudo omake install

Un-installing
-------------
To remove the installed ocamltest OCaml package, run:

    sudo omake uninstall

Using ocamltest
---------------
When compiling your OCaml project, use ocamlfind with the directive
'-package ocamltest', like this:

    ocamlfind ocamlc -package ocamltest my_src.ml
