# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  false if arr.empty?
  false if n.zero?
  arr.combination(2).any? {|x, y| x + y == n } 
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  #false if s.empty? 
  #true if s.start_with(/([^{a-z}]/)
  
  #true if s[0].match(/[^{a-z}]/ || /^[{A-Z}]/)
  s.start_with?(/[a-z][A-Z]/ && /[^aeiouAEIOU]/ && /^s.empty?/ && /'/)
  #s[0].match(/[a-z]/ && /[^aeiouAEIOU]/ && /^s.empty?/ )
  #false if s.start_with?([^a-z])
  #s[0].match(/[{a-z}]/ && /[^aeiouAEIOU]/)
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, isbn.empty? or price <=0
    @isbn = isbn
    @price = price
  end

  def price_as_string(price)
    puts "/$%0.2f {#price}"
  end  

end
