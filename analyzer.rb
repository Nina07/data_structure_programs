class Analyzer
	attr_accessor :first_name, :last_name, :full_name

	def initialize(f_name, l_name)
		@first_name = f_name
		@last_name = l_name
	end

	def fullname
		@full_name = "#{@first_name} #{@last_name}"
		puts "Your full name is #{full_name}"
	end

	def name_reversed
		puts "Your name reversed is #{@full_name.reverse}"
	end

	def name_length
		puts "Your fullname has a total of #{@full_name.chars.collect(&:strip).reject{|i| i.empty?}.length} characters"
	end
end

puts "Enter your first name"
fname = gets.chomp

puts "Enter your last name"
lname = gets.chomp

a = Analyzer.new(fname, lname)
a.fullname
a.name_reversed
a.name_length
