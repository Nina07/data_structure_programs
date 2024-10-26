class MergeArray
	def initialize(ary1, ary2)
		@ary1 = ary1
		@ary2 = ary2
		@merged_array = []
	end

	def merge
		i, j = 1
		ary1Ele = @ary1.first
		ary2Ele = @ary2.first

		while (ary1Ele || ary2Ele)
			if ary1Ele > ary2Ele
				@merged_array << ary2Ele
				ary2Ele = @ary2[i]
				i++
			elsif ary2Ele > ary1Ele
				@merged_array << ary1Ele
				ary1Ele = @array[j]
				j++
			end
		end
		@merged_array
	end
end

m = MergeArray.new([0,4,5,6], [1,2,7])
puts m.merge
