# Bijective

In mathematics, a bijection, bijective function, or one-to-one correspondence is a function
between the elements of two sets, where each element of one set is paired with exactly one
element of the other set, and each element of the other set is paired with exactly one
element of the first set.

```elixir
iex> Bijective.encode(19587376)
"b9J8M"
iex> Bijective.decode("b9J8M")
19587376
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bijective` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bijective, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/bijective](https://hexdocs.pm/bijective).

