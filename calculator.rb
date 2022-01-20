class Calculator
	attr_accessor :num_1, :num_2
	def initialize(num1, num2)
		@num_1 = num1.to_i
		@num_2 = num2.to_i
	end

	def addition
		puts "The sum is #{@num_1+@num_2}"
	end

	def subtraction
		puts "The subtraction results in #{@num_1 - @num_2}"
	end

	def multiplication
		puts "The product is #{@num_1*@num_2}"
	end

	def modulus
		unless @num_1 == 0 || @num_2 == 0
			mod = @num_1 % @num_2
			puts "The modulus value is #{mod}"
		else
			puts "Can't divide by zero"
		end
	end

	def division
		unless @num_1 == 0 || @num_2 == 0
			puts "The division results in #{@num_1 / @num_2}"
		else
			puts "Can't divide by zero"
		end
	end
end

puts "Enter the first number"
num1 = gets.chomp

puts "Enter the second number"
num2 = gets.chomp

c = Calculator.new(num1, num2)
c.addition
c.subtraction
c.multiplication
c.modulus
c.division
