defmodule SortTest do
  use ExUnit.Case

  test "Sort.bsort/1 => Simple reversed list" do
    assert Sort.bsort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  test "Sort.bsort/1 => \"Random\" list content" do
    assert Sort.bsort([10, 1, 9, 2, 8, 3, 7, 4, 6, 5]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end
end
