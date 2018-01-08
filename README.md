# Bijective

In mathematics, a bijection, bijective function, or one-to-one correspondence is a function
between the elements of two sets, where each element of one set is paired with exactly one
element of the other set, and each element of the other set is paired with exactly one
element of the first set.

```elixir
iex> Bijective.encode(19587376)
"bulJA"
iex> Bijective.decode("bulJA")
19587376
```

## Installation

You can install by adding `bijective` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bijective, "~> 0.0.2"}
  ]
end
```

Documentation can be found at: [https://hexdocs.pm/bijective](https://hexdocs.pm/bijective).

