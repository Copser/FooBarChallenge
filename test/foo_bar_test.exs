defmodule FooBarTest do
  use ExUnit.Case
  doctest FooBar

  @partial_result [1, 2, "Foo", 4, "Bar", "Foo", 7, 8, "Foo", "Bar"]
  @complete_result [
    1, 2, "Foo", 4, "Bar", "Foo", 7, 8, "Foo", "Bar", 11, "Foo", 13, 14, "FooBar",
    16, 17, "Foo", 19, "Bar", "Foo", 22, 23, "Foo", "Bar", 26, "Foo", 28, 29,
    "FooBar", 31, 32, "Foo", 34, "Bar", "Foo", 37, 38, "Foo", "Bar", 41, "Foo", 43,
    44, "FooBar", 46, 47, "Foo", 49, "Bar", "Foo", 52, 53, "Foo", "Bar", 56, "Foo",
    58, 59, "FooBar", 61, 62, "Foo", 64, "Bar", "Foo", 67, 68, "Foo", "Bar", 71,
    "Foo", 73, 74, "FooBar", 76, 77, "Foo", 79, "Bar", "Foo", 82, 83, "Foo", "Bar",
    86, "Foo", 88, 89, "FooBar", 91, 92, "Foo", 94, "Bar", "Foo", 97, 98, "Foo",
    "Bar"
  ]

  test "foobar challeng test for list of 20 numbers" do
    assert Enum.map(1..10, fn t -> FooBar.play(t) end) == @partial_result
  end

  test "test foobar function for first 100 numbers" do
    assert Enum.map(1..100, fn t -> FooBar.play(t) end) == @complete_result
  end
end
