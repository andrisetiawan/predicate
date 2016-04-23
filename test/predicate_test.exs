defmodule PredicateTest do
  use ExUnit.Case
  doctest Predicate

  test "equal" do
    assert Predicate.is('a', 'equal', 'a') == true
    assert Predicate.is(2, 'equal', 2) == true
    assert Predicate.is({'a', 2}, 'equal', {'a', 2}) == true
  end

  test "not_equal" do
    assert Predicate.is('a', 'not_equal', 'b') == true
    assert Predicate.is(2, 'not_equal', 3) == true
    assert Predicate.is({'a', 2}, 'not_equal', {'a', 3}) == true
    assert Predicate.is({'a', 2}, 'not_equal', {'a'}) == true
  end

  test "less_than" do
    assert Predicate.is(1, 'less_than', 2) == true
    assert Predicate.is(2, 'less_than', 2) == false
    assert Predicate.is(2, 'less_than', 1) == false
  end

  test "greater_than" do
    assert Predicate.is(1, 'greater_than', 2) == false
    assert Predicate.is(2, 'greater_than', 2) == false
    assert Predicate.is(2, 'greater_than', 1) == true
  end

  test "less_than_or_equal_to" do
    assert Predicate.is(1, 'less_than_or_equal_to', 2) == true
    assert Predicate.is(2, 'less_than_or_equal_to', 2) == true
    assert Predicate.is(2, 'less_than_or_equal_to', 1) == false
  end

  test "greater_than_or_equal_to" do
    assert Predicate.is(1, 'greater_than_or_equal_to', 2) == false
    assert Predicate.is(2, 'greater_than_or_equal_to', 2) == true
    assert Predicate.is(2, 'greater_than_or_equal_to', 1) == true
  end

  test "in" do
    assert Predicate.is('a', 'in', ['a', 'b']) == true
    assert Predicate.is('c', 'in', ['a', 'b']) == false
  end

  test "contain" do
    assert Predicate.is(['a', 'b'], 'contain', 'a') == true
    assert Predicate.is(['a', 'b'], 'contain', 'c') == false
  end
end
