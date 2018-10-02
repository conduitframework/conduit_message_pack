defmodule ConduitMessagePackTest do
  use ExUnit.Case
  doctest ConduitMessagePack

  test "greets the world" do
    assert ConduitMessagePack.hello() == :world
  end
end
