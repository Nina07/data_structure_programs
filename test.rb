class ReturnSortedArray
    def initialize(array)
        @array = array
    end

    def count_occurence
        count_hash = Hash.new(0)
        @array.each {|i| count_hash[i] += 1}
        print count_hash
    end

    def return_sorted
        
    end
end

r = ReturnSortedArray.new([0,0,0,1,0,1,2,1])
r.count_occurence
