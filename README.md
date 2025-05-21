# Latin prayers in LaTeX

This is a pet project to typeset Catholic prayers in Latin using LaTeX.

## Contents

The repository contains the following prayers *(orationes):*

* Our Father *(Pater Noster)*
* Hail Mary *(Ave Maria)*
* Glory Be to the Father *(Gloria Patri)*

It also contains the Nicene Creed *(Symbolum Nicaenum)* and Apostles' Creed *(Symbolum Apostolorum).*

## Compilation

The documents are meant to be compiled with LuaLaTeX, and they require packages found in a full TeX Live installation.
Build them using the provided Makefile:

```bash
make orationes.pdf
make symbolum_nicaenum.pdf
make symbolum_apostolorum.pdf
```
