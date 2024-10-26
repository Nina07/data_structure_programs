class Reverse
	def initialize(string)
		@input_string = string
	end

	def reverse
		input_chars = @input_string.chars
		reversed_string = ""
		for i in (input_chars.length-1).downto(0) do
			reversed_string << input_chars[i]
		end
		reversed_string
	end
end

r = Reverse.new("Hi, My name is Nina")
puts r.reverse()
