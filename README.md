# luau-goodies

Editor tooling for [Luau](https://luau.org).

## `syntaxes/Luau.sublime-syntax`

A Sublime Text syntax definition for Luau, usable by [bat](https://github.com/sharkdp/bat)
and anything else built on syntect or Sublime syntaxes.

It is a copy of the Lua syntax from [sublimehq/Packages](https://github.com/sublimehq/Packages)
(see `LICENSE-sublimehq-packages`) with these Luau additions:

- type annotations on locals, parameters and return types
- `type` / `export type` declarations and generics
- `::` type casts
- `if ... then ... else` expressions
- `continue`, compound assignment (`+=`, `..=`, ...)
- backtick string interpolation
- `0b` binary literals and `_` digit separators
- `@attribute` annotations

### Using it with bat

```sh
mkdir -p "$(bat --config-dir)/syntaxes"
cp syntaxes/Luau.sublime-syntax "$(bat --config-dir)/syntaxes/"
bat cache --build
bat tests/types.luau
```

Type annotation detection is heuristic: a `:` is treated as a method call only
when an identifier and call arguments follow it.
