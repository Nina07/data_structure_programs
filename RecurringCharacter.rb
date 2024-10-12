class RecurringCharacter
	def initialize(ary)
		@ary = ary
	end

	def count
		return "Empty list" if @ary.length.zero?
		hash = {}
		for i in 0..@ary.length-1
			if hash[@ary[i]]
				hash[@ary[i]] += 1
				return "The first recurring character is #{@ary[i]}"
				break
			else
				hash[@ary[i]] = 1
			end
		end
		return "No recurring character"
	end
end

r = RecurringCharacter.new([2,5,3,2,5,1,3,6])
puts r.count
s = RecurringCharacter.new([1,2,3,3,1])
puts s.count
t = RecurringCharacter.new([])
puts t.count
