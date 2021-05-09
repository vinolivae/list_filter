defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "return a list of odd numbers" do
      list = ["1", "3", "6", "43", "bike", "6", "abc"]

      response = ListFilter.call(list)
      expected_response = 3

      assert expected_response == response
    end

    test "return a empty list" do
      list = ["hello", "world"]

      response = ListFilter.call(list)
      expected_response = 0

      assert expected_response == response
    end
  end
end
