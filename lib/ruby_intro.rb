# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort!
    a = arr[-2..-1]
    a.reduce(0, :+)
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    arr.combination(2).any? {|x,y| x+y==n}
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s.downcase =~ /^[b-df-hj-np-tv-z].*$/)
end

def binary_multiple_of_4? s
  !!((s =~ /^[10]*00$/) || (s =~/^0$/))
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError
    else
      @isbn = isbn
    end
  end

  def price
    @price
  end

  def price=(price)
    if price <= 0
      raise ArgumentError
    else
      @price = price
    end
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
