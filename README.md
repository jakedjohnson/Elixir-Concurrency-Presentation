
# Elixir Concurrency Presentation

Unsophisticated code slideshow to illustrate the behaviors and
lifecycle of Elixir's processes.

---

con·cur·rent (kənˈkərənt)
adjective
existing, happening, or done at the same time.

---

http://erlang.org/doc/reference_manual/processes.html

```
Erlang is designed for massive concurrency. Erlang processes are
lightweight (grow and shrink dynamically) with small memory
footprint, fast to create and terminate, and the scheduling
overhead is low.
```

https://elixir-lang.org/getting-started/processes.html

```
In Elixir, all code runs inside processes. Processes are
isolated from each other, run concurrent to one another and
communicate via message passing. Processes are not only the
basis for concurrency in Elixir, but they also provide the
means for building distributed and fault-tolerant programs.

Elixir’s processes should not be confused with operating
system processes. Processes in Elixir are extremely
lightweight in terms of memory and CPU (unlike threads
in many other programming languages). Because of this,
it is not uncommon to have tens or even hundreds of
thousands of processes running simultaneously.

...

While other languages would require us to catch/handle
exceptions, in Elixir we are actually fine with
letting processes fail because we expect supervisors
to properly restart our systems. “Failing fast” is a
common philosophy when writing Elixir software!
```

Processes are the building blocks for major Elixir language
abstractions such as:

- Agents
- Tasks
- GenServer
- GenStage

# In this presentation

- What is a process?
    -  basic lifecycle
    -  ability to send & receive messages
- Isolated nature - won't crash/corrupt each other
- Linking - establishing a relationship in a case of failures
- Supervisors - detects and handles process failures

# To run these slides locally

Fire up an interactive Elixir shell (must have Elixir installed locally first - ex. `asdf install elixir 1.6.0`) in the project directory with `iex -S mix` and call the run method for each "slide":

`ECP.One.run`
`ECP.Two.run`
etc
