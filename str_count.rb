class StrCount
	def initialize(str)
		@str = str
	end

	def count_occurence
		hash = Hash.new
		hash.default = 0
		letters = @str.downcase.chars # converts into an array of characters in downcase
		letters.each do |l|
				hash[l] += 1
		end
		puts "The hash with each character and the number of times it occured in the string - #{hash}"
		hash.compact.each do |k,v|
				print "#{k}#{v}"
		end
	end
end

StrCount.new("Melanie is a noob").count_occurence