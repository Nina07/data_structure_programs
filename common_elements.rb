class CommonElements
    def check_if_common(ary1, ary2)
        return (ary1 & ary2).empty?
    end

    def sum(ary, target)
        for i in 0...ary.length-1
            return [i, i+1] if ary[i]+ary[i+1] == target
        end
    end
end

s = CommonElements.new
puts s.sum([3,2,3], 6)
puts s.sum([2,7,11,15], 13)