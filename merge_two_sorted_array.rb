class MergeArrays
	def initialize(ary1, ary2)
		@ary1 = ary1
		@ary2 = ary2
	end

	def merge
		@ary1 + @ary2
	end

	def sort_merged_arrays
		array = merge
		for i in 0..array.length-1
			if !array[i+1].nil? && array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]	# swapping without using third element
			end            
		end
		print array
	end
end

m = MergeArrays.new([0,3,4,31], [4,6,30])
m.sort_merged_arrays

# doesn't work if input arrays are interchanged from [0,3,4,31], [4,6,30]