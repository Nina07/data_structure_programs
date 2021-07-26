class CoPrime
    def count_coprime(input)
        array = []
        input.each do |i|
            array << (1...i).count { |a| i.gcd(a) == 1 }
        end
        print "The count of co prime for #{input} are #{array}\n"
    end
end

c = CoPrime.new
c.count_coprime([5,8,14])