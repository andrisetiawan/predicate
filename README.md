# Predicate

Elixir's simple predicate evaluation

## Current support

- `equal`
- `not_equal`
- `less_than`
- `greater_than`
- `less_than_or_equal_to`
- `greater_than_or_equal_to`
- `in`
- `contain`

## Usage

```
Predicate.is('a', 'equal', 'a') # => true
Predicate.is(2, 'equal', 2) # => true
Predicate.is({'a', 2}, 'equal', {'a', 2}) # => true
Predicate.is('a', 'not_equal', 'b') # => true
Predicate.is(2, 'not_equal', 3) # => true
Predicate.is({'a', 2}, 'not_equal', {'a', 3}) # => true
Predicate.is({'a', 2}, 'not_equal', {'a'}) # => true
Predicate.is(1, 'less_than', 2) # => true
Predicate.is(2, 'less_than', 2) # => false
Predicate.is(2, 'less_than', 1) # => false
Predicate.is(1, 'greater_than', 2) # => false
Predicate.is(2, 'greater_than', 2) # => false
Predicate.is(2, 'greater_than', 1) # => true
Predicate.is(1, 'less_than_or_equal_to', 2) # => true
Predicate.is(2, 'less_than_or_equal_to', 2) # => true
Predicate.is(2, 'less_than_or_equal_to', 1) # => false
Predicate.is(1, 'greater_than_or_equal_to', 2) # => false
Predicate.is(2, 'greater_than_or_equal_to', 2) # => true
Predicate.is(2, 'greater_than_or_equal_to', 1) # => true
Predicate.is('a', 'in', ['a', 'b']) # => true
Predicate.is('c', 'in', ['a', 'b']) # => false
Predicate.is(['a', 'b'], 'contain', 'a') # => true
Predicate.is(['a', 'b'], 'contain', 'c') # => false
```
