# for a given integer array, start with some value x and add each of the array element with x, such that the running sum is always >= x

class RunningSum
    def initialize(array)
        @array = array.sort
    end

    def calculate_x
        first_element = @array.first
        sum = 0
        i = 1
        loop do
            sum = i + first_element
            i += 1
            if sum > 0
                break
            end
        end
        puts i-1
    end
end

r = RunningSum.new([-4,3,2,1])
# r.calculate_x

s = RunningSum.new([3,-6,5,-2,1])
s.calculate_x