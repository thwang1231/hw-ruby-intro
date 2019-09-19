# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    total = 0

    arr.each {|num| total+=num}
    return total

end

def max_2_sum arr

    if arr.size == 0
        return 0
    elsif arr.size == 1
        return arr[0]
    else
        sorted = arr.sort
        size = sorted.size
        return sorted[size-1] + sorted[size-2]
    end

end

def sum_to_n? arr, n

    max_idx = arr.size-1

    for i in 0 .. max_idx do
        for j in 0 .. max_idx do
            if i != j and arr[i]+arr[j] == n
                return true
            end
        end 
    end

    return false

end

# Part 2

def hello(name)

    return "Hello, " + name

end

def starts_with_consonant? s

    if s==""
        return false
    end

    down_s = s.downcase
    if "bcdfghjklmnpqrstvwxyz".include? down_s[0]
        return true
    end

    return false

end

def binary_multiple_of_4? s

    if s == "0"
        return true
    end

    size = s.size
    if s[size-1] == "0" and s[size-2] == "0" and s.scan(/\D/).empty?
            return true
    end

    return false


end

# Part 3

class BookInStock

    def initialize(isbn, price)
        if isbn == "" or price <= 0
            raise ArgumentError.new("No ISBN or non-positive price")
        end

        @isbn = isbn
        @price = price
    end

    def isbn
        @isbn
    end

    def price
        @price
    end

    def isbn=(isbn)
        @isbn = isbn
    end

    def price=(price)
        @price = price
    end

    def price_as_string()
        return "$%0.2f" % [@price]
    end

end
