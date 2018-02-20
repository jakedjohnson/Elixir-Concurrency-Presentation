defmodule ECP.Six do
  @moduledoc """
  If the process's function is recursive, we can
  send multiple messages to it.
  """

  def run do
    IO.puts ""
    IO.inspect self()
    pid = new_process()
    IO.inspect pid
    IO.puts ""

    send pid, {:selector, 1, "Doesn't matter"}
    send pid, :atom
    send pid, "Oops"
    # Still rockin'
    :timer.sleep(1000)
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    spawn(__MODULE__, :hello, [])
  end

  def hello do
    receive do
      {:selector, i, _} when is_integer(i) ->
        IO.puts "Tuple matched"
      value when is_atom(value) ->
        IO.puts "Atom matched"
      _ ->
        IO.puts "Unexpected message received"
    end
    hello()
  end
end