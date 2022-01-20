def search_insert(nums, target)
    start_pos = 0
    end_pos = nums.length - 1
    while start_pos <= end_pos
        mid_pos = (start_pos + end_pos)/2
        if nums[mid_pos] == target
            return mid_pos
        elsif nums[mid_pos] > target
            end_pos = mid_pos - 1
        else
            start_pos = mid_pos + 1
        end 
    end
    start_pos
end