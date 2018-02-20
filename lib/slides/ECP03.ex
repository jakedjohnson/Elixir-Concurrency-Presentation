defmodule ECP.Three do
  @moduledoc """
  We can also spin up a process from a module's method
  using spawn/3, this time observing the asynchronous nature
  """

  def run do
    IO.puts ""
    IO.inspect self()
    IO.puts ""

    pid = new_process()
    IO.inspect pid

    IO.inspect Process.alive?(pid)
    # Suspend current process for 1 millisecond
    :timer.sleep(1)
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    # spawn/3 takes: 
      # 1) Module (in this case self)
      # 2) Function (can't be private)
      # 3) Arguments
    spawn(__MODULE__, :hello, [])
  end

  def hello do
    # Output to terminal takes a bit longer than 1 + 1
    IO.puts "World" 
  end
end