### The Citron Standard Library

This is the standard library for [Citron](https://github.com/alimpfard/citron)

A brief explanation of the directory structure of this repository:

+ toplevel: category of the module
+ level 1: subcategory of the module (if applicable, else just module name)
+ level 2~inf: submodules and/internals
+ files (`*.ctr`): code/implementation

for example: `Data/Vectorized/Math` is:
  - submodule `Math`
  - of module `Vectorized`
  - of category `Data`

or `Utils/Colors/HTML/main.ctr` is:
  - the implementation of `Colors`
  - in the `HTML` submodule
  - of the `Colors` module
  - in the `Utils` category

these can be accessed within Citron by
```
import Library/<path>.
```
