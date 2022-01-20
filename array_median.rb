class ArrayMedian
    def initialize(ary1, ary2)
        @ary1 = ary1
        @ary2 = ary2
    end

    def calculateMedian
        merged_array = (@ary1 + @ary2).sort
        array_length = merged_array.length
        if array_length.odd?
            return merged_array[(array_length+1)/2 - 1].to_f
        else
            median = (merged_array[array_length/2].to_f + merged_array[(array_length/2) - 1].to_f) / 2
            return median
        end
    end
end

a = ArrayMedian.new([1,4,5], [2,3,7])
puts a.calculateMedian
