defmodule ECP.Five do
  @moduledoc """
  Once a process is listening, we can send a message to it.

  """

  def run do
    IO.puts ""
    IO.inspect self()
    pid = new_process()
    IO.inspect pid
    IO.inspect Process.alive?(pid)
    IO.puts ""

    # Calling send/2 from Kernel
    send(pid, :greet)
    # Once the process has received its message, it dies
    :timer.sleep(1)
    IO.inspect Process.alive?(pid)

    IO.puts ""
  end

  defp new_process do
    spawn(__MODULE__, :hello, [])
  end

  def hello do
    # Behaves similarly to case/2 pattern matching
    receive do
      :greet ->
        IO.puts "Atom matched! Hello World!"
        # I don't send anything back, I just do a thing
    end
  end
end