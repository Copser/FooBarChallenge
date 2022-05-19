defmodule FooBar do
  @moduledoc """
  FooBar module contain function for calculating FooBar Challenge
  """

  @doc """
  foo_bar/1 - it will pattern match on truncated division and print
  multiples of three print "Foo" instead of the number and for the multiples of five print "Bar".
  For numbers that are multiples of both three and five print "FooBar".

  ## Expects

  * `n:integer` - number

  ## Examples

      iex(4)> Enum.map(1..10, fn x -> FooBar.play(x) end)
      [1, 2, "Foo", 4, "Bar", "Foo", 7, 8, "Foo", "Bar"]

  """
  def play(n) do
    calculate_foo_bar(rem(n, 3), rem(n, 5), n)
  end

  defp calculate_foo_bar(0, 0, _), do: "FooBar"
  defp calculate_foo_bar(0, _, _), do: "Foo"
  defp calculate_foo_bar(_, 0, _), do: "Bar"
  defp calculate_foo_bar(_, _, n), do: n
end
