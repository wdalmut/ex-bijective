defmodule Bijective do
  @moduledoc """
  Documentation for Bijective.

  Generate a unique string for a given value and decode a string to a unique number
  """

  @alphabet "abcdefghipqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

  def encode(number) when number == 0, do: @alphabet |> String.at(number)

  @doc """
  Bijective encode function

  ## Examples

      iex> Bijective.encode(19587376)
      "b9J8M"

  """
  def encode(number) do
    base = base()

    append([], number, base) |> Enum.reverse |> Enum.join
  end

  @doc false
  defp append(memo, i, _original) when i == 0, do: memo

  @doc false
  defp append(memo, i, base) do
    append(
      memo |> Enum.concat([@alphabet |> String.at(rem(i, base))]),
      Integer.floor_div(i, base),
      base
    )
  end

  @doc false
  defp base do
    @alphabet |> String.length
  end

  @doc """
  Bijective decode function

  ## Examples

      iex> Bijective.decode("b9J8M")
      19587376

  """
  def decode(sentence) do
    sentence
    |> String.graphemes
    |> Enum.reduce(0, fn(elem, memo) ->
      at = :binary.match(@alphabet, elem)
      memo * base() + elem(at, 0)
    end)
  end
end
