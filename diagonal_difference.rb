class DiagonalDifference
	def initialize(arr)
		@arr = arr
	end
	
	def left_diagonal
    		i = 0
    		left_d = []
    		for j in 0..@arr.length-1
        		left_d << @arr[j][i]
        		i += 1
    		end
    		left_d.sum
	end

	def right_diagonal
    		#[[11, 2, 4], [4, 5, 6], [10, 8, -12]]
    		i = @arr.length-1; right_d = []
    		for j in (0..@arr.length-1)
        		right_d << @arr[j][i]
        		i -= 1
    		end
	    	right_d.sum
	end

	def diagonalDifference
    		return (left_diagonal-right_diagonal).abs
	end
end

d = DiagonalDifference.new([[11, 2, 4], [4, 5, 6], [10, 8, -12]])
p d.diagonalDifference

# HackerRank challenge https://www.hackerrank.com/challenges/diagonal-difference/problem?isFullScreen=true
