defmodule FlowdockBot do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(FlowdockBot.Robot, [])
    ]

    opts = [strategy: :one_for_one, name: FlowdockBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
