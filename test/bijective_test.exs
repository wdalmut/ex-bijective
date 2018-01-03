defmodule BijectiveTest do
  use ExUnit.Case
  doctest Bijective

  test "Bijective encoding" do
    table = Enum.to_list(0..4)

    result = table |> Enum.map(&Bijective.encode(&1))
    assert result == ["a", "b", "c", "d", "e"]
  end

  test "Bijective decoding" do
    table = ["a", "b", "c", "d"]

    result = table |> Enum.map(&Bijective.decode(&1))
    assert result == [0,1,2,3]
  end

  test "Bijective encode/decode from eachother" do
    original = :rand.uniform(99999999)

    encoded = Bijective.encode(original)
    decoded = Bijective.decode(encoded)

    assert original == decoded
  end
end
