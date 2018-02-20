defmodule ECP.Ten do
  @moduledoc """
  spawn_monitor/3 now allows the parent to receive
  a response from the child process
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    {pid, ref1} = new_process()
    IO.inspect pid
    IO.inspect ref1
    IO.puts ""
   
    receive do
      # Case match on the Process failure tuple
      {:DOWN, ref2, :process, from_pid, reason} ->
        IO.inspect ref2
        IO.inspect from_pid
        IO.puts "Exit reason: #{reason}"
    end

    IO.puts ""
  end

  defp new_process do
    spawn_monitor(__MODULE__, :explode, [])
  end

  def explode do
    exit(:kaboom)
  end
end