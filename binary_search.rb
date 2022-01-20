# O(n) time complexity
def binary_search(nums, target)
	first, last = 0, nums.length - 1

	while first <= last
		i = (first + last) / 2

		if nums[i] == target
			return i
		elsif nums[i] > target
			last -= 1
		elsif  nums[i] < target
			first += 1
		else
			return "Element does not exist in the list"
		end
	end
end

puts binary_search([-1,0,3,5,9,12],9)
# puts search([2,5], 5)