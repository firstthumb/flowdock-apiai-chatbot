defmodule FlowdockBot.Mixfile do
  use Mix.Project

  def project do
    [
      app: :flowdock_bot,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FlowdockBot, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1", override: true},
      {:hedwig_flowdock, github: "supernullset/hedwig_flowdock"},
      {:apiai, "~> 0.1.1"}
    ]
  end
end
