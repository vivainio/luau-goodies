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

### Installing it for bat

```sh
mkdir -p "$(bat --config-dir)/syntaxes"
curl -fsSL -o "$(bat --config-dir)/syntaxes/Luau.sublime-syntax" \
  https://raw.githubusercontent.com/vivainio/luau-goodies/main/syntaxes/Luau.sublime-syntax
bat cache --build
```

Then `bat file.luau` is highlighted as Luau.

Type annotation detection is heuristic: a `:` is treated as a method call only
when an identifier and call arguments follow it.

## License

MIT, see `LICENSE`. The syntax is derived from sublimehq/Packages, whose license is in `LICENSE-sublimehq-packages`.
