defmodule ECP.Two do
  @moduledoc """
  The most rudimentary way to create a new, standalone
  process is by calling spawn/1
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    pid = new_process()
    IO.inspect pid
    # Dies once process function is complete
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    # spawn/1 from Kernel
    # Takes any old function, in this case anonymous
    spawn(fn -> 1 + 1 end)
  end
end
