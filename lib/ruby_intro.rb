# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.size == 0
   return 0
  else
    sum = 0
    arr.each do |i|
      sum += i
    end
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr = arr.sort
    return arr[arr.size-1]+arr[arr.size-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size < 2
    return false
  else
    arr.each do |i|
      arr2 = arr.compact
      arr2.delete(i)
      return true if arr2.include?(n-i) == true
    end
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false
  elsif s =~ /^[^a-zA-Z](.*)/
    return false
  elsif s =~ /^[aeiouAEIOU](.*)/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  elsif s =~ /^[01]*$/
    if s.to_i(2) % "100".to_i(2) == 0
      return true 
    else
      return false  
    end
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  #@isbn = nil
  #@price = 0,00
  
  def initialize isbn,price
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
    
  def isbn= isbn
    if isbn == ''
      raise ArgumentError  
    end
    @isbn = isbn
  end
  
  def price
    @price 
  end
    
  def price= price
    if price <= 0
      raise ArgumentError  
    end
    @price = price
  end  
  
  def price_as_string
    "$"+format("%0.2f",price)
  end
    
end
