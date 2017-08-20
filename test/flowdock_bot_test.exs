defmodule FlowdockBotTest do
  use ExUnit.Case
  doctest FlowdockBot

  test "greets the world" do
    assert FlowdockBot.hello() == :world
  end
end
