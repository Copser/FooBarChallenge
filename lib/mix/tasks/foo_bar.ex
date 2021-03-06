defmodule Mix.Tasks.FooBar do
  @moduledoc false
  use Mix.Task

  alias FooBar

  @doc """
  Genarate a list of 100 numbers and calls FooBar.play/1 to calculate FooBar Challenge
  """
  def run(_) do
    Mix.Task.run("app.start")

    Enum.map(1..100, fn t -> FooBar.play(t) end)
    |> IO.inspect(label: "FooBar Challenge", limit: :infinity)
  end
end
