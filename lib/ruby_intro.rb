# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum =0
  if arr.size != 0
    arr.each {|i| sum += i}
  end
  return sum
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
    arr.each {|i| 
       arr.delete(i)
       return true if arr.include?(n-i) == true}
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
  if s =~ /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z](.*)/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  elsif (s =~ /^[01]*$/ && s.to_i(2) % "100".to_i(2) == 0)
      return true 
  else
      return false  
  end
  #return false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
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
    "$"+"%0.2f"%price
  end
    
end
