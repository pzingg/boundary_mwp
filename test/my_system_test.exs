defmodule MySystemTest do
  use ExUnit.Case
  doctest MySystem

  test "greets the world" do
    assert MySystem.hello() == :world
  end
end
