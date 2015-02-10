# Meep

Polyglot program: Hello World in Ruby, C, PHP, and JavaScript.

## Annotated source

```
//#<?php /*
```

* Ruby sees an empty regular expression literal, followed by the comment `<?php /*`.
* C sees a one-line comment.
* PHP sees a literal `//#`, the beginning of PHP code, and the beginning of a multi-line comment.
* JavaScript sees a one-line comment.

```
//;def main&b;b&&yield end;"\
```

* Ruby sees an empty regular expression literal, followed by a definition of `main`, followed by the beginning of a string literal.
* C sees a one-line comment, with a line continuation (the `\`).
* PHP sees the continuation of the multi-line comment.
* JavaScript sees a one-line comment.

The Ruby method just executes the code given to it in a block, if one was specified.

```
printf=require('util').print;/**/function//"
```

* Ruby sees a continuation of the string literal.
* C sees the ending of the continued one-line comment.
* PHP sees a continuation of the multi-line comment, followed by the `function` keyword, and a one-line comment.
* JavaScript sees an importing of the `print` function as `printf()`, followed by an empty multi-line comment, followed by the function keyword, followed by a one-line comment.

```
main(){printf("\x08\x08\x08Hello, world!\n");}
```

* Ruby sees a call to `main`, executing everything in the block immediately.
* C sees the definition of `main()`, with an implicit `int` type and implicit declaration of `printf` (hence the warnings).
* PHP and JavaScript see the continuation of the `main()` function (starting with the `function` keyword).

```
main();
```

* Ruby sees a call to `main`, which is an elaborate no-op because there is no block.
* C sees this as ... who the fuck knows? It doesn't break anything, though.
* PHP and JavaScript sees this as calling the `main` function defined above.
