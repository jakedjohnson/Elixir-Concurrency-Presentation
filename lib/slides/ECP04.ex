defmodule ECP.Four do
  @moduledoc """
  Processes can "listen" for an incoming message, which 
  keeps them alive.
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    pid = new_process()
    IO.inspect pid
    IO.inspect Process.alive?(pid)
    :timer.sleep(1000) # Now one second
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    spawn(__MODULE__, :hello, [])
  end

  def hello do
    # receive/1 from Kernel.SpecialForms
    receive do
      # nothing... yet
    end
  end
end