class Factorial
    # recursive solution
    def factorial(n)
        return 1 if n == 1
        return n * factorial(n-1)
    end
end

f = Factorial.new
puts f.factorial(5)

# one liner - (1..n).inject(1, :*)