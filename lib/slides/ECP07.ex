defmodule ECP.Seven do
  @moduledoc """
  Sometimes, processes fail.

  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    pid = new_process()
    IO.inspect Process.alive?(pid)
    IO.inspect pid
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    spawn(__MODULE__, :explode, [])
  end

  def explode do
    # That was a little _too_ quiet
    exit(:kaboom)
  end
end