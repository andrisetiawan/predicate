defmodule Predicate do
  # def is(x, 'empty'), do: is_contain(x, y)
  # def is(x, 'not_empty'), do: is_contain(x, y)

  def is(x, 'equal', y), do: x == y
  def is(x, 'not_equal', y), do: x != y
  def is(x, 'less_than', y), do: x < y
  def is(x, 'greater_than', y), do: x > y
  def is(x, 'less_than_or_equal_to', y), do: x <= y
  def is(x, 'greater_than_or_equal_to', y), do: x >= y
  def is(x, 'in', y), do: is_contain(y, x)
  def is(x, 'contain', y), do: is_contain(x, y)


  defp is_contain(enum, element) do
    Enum.any?(enum, fn(el) -> el == element end)
  end
end
