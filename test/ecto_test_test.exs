defmodule EctoTestTest do
  use ExUnit.Case
  doctest EctoTest

  test "greets the world" do
    assert EctoTest.hello() == :world
  end
end
