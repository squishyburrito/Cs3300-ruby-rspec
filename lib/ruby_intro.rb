# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  #check if array is empty
  false if arr.empty?
  #check if n is zero
  false if n.zero?
  #check if combination of any to values in array equal to n
  arr.combination(2).any? {|x, y| x + y == n } 
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

#method to check if the string starts with a consonent
def starts_with_consonant? s
  s.start_with?(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  
  #getters and #setters
  attr_accessor :isbn, :price
  
  #initialize
  #raise Argument error if the string is empty or less than or equal to 0
  def initialize(isbn, price)
    raise ArgumentError, isbn.empty? or price <=0
    @isbn = isbn
    @price = price
  end

  #method to format the price with a dollar sign and 2 decimal places
  def price_as_string(price)
    puts "/$%0.2f {#price}"
  end  

end
