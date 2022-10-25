# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  false if arr.empty? && n.zero?
  arr.combination(2).any? {|x, y| x + y == n } 
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  true if s[0].match(/[{a-z}]/ && /[^aeiouAEIOU]/)
  true if s.empty?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
