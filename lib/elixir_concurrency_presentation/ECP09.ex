defmodule ECP.Nine do
  @moduledoc """
  We can connect two processes together but avoid
  crashing by creating a supervisor with spawn_monitor/3
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    {pid, ref} = new_process()
    IO.inspect pid
    IO.inspect Process.alive?(pid)
    :timer.sleep(1)
    IO.inspect Process.alive?(pid)
    IO.puts ""

    IO.inspect ref

    IO.puts ""
  end

  defp new_process do
    # Returns a {PID, Reference} tuple
    spawn_monitor(__MODULE__, :explode, [])
  end

  def explode do
    IO.puts "It's the green wire"
    exit(:kaboom)
  end
end