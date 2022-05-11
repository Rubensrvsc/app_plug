defmodule AppPlugTest do
  use ExUnit.Case
  doctest AppPlug

  test "greets the world" do
    assert AppPlug.hello() == :world
  end
end
