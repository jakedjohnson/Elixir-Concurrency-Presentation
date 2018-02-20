defmodule ECP.One do
  @moduledoc """
  All Elixir code runs inside processes.
  Any guesses as to what `self` is referring to?
  """

  def run do
    IO.puts ""

    # self/0 from Kernel
    self()
    |> IO.inspect
    |> Process.info()
    |> IO.inspect

    IO.puts ""
  end
end
