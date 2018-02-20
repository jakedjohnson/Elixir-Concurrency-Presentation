defmodule ECP.Eight do
  @moduledoc """
  We can connect two processes together with spawn_link/3
  
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    pid = new_process()
    IO.inspect pid

    IO.puts ""
  end

  defp new_process do
    # Creates a child process linked to parent
    spawn_link(__MODULE__, :explode, [])
  end

  def explode do
    # _Now_ we hear you
    exit(:kaboom)
  end
end