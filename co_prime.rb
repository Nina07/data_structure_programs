# co primes are the numbers whose greatest common divisor is 1.
# bad time complexity, as every time it will calculate from 1
# Eucledian algo wiki

require "prime"

class CoPrime
    def count_coprime(input)
        array = []
        input.each do |num|
            num.prime_division.inject(1) {|res, (pr, exp)| print [res,pr]; res *= (pr-1) * pr**(exp-1)}
            array << num.prime_division.inject(1) {|res, (pr, exp)| res *= (pr-1) * pr**(exp-1) } 
        end
        print "The count of co prime counts are #{array}\n"
    end
end

c = CoPrime.new
c.count_coprime([5,8,14])
# c.count_coprime([13195])
# c.count_coprime([12377, 12379, 12391, 12401, 12409, 12413, 12421, 12433, 12437, 12451, 12457, 12473, 12479, 12487, 12491, 12497, 12503, 12511, 12517, 12527, 12539, 12541, 12547, 12553, 12569, 12577, 12583, 12589, 12601, 12611, 12613, 12619, 12637, 12641, 12647, 12653, 12659, 12671, 12689, 12697, 12703, 12713, 12721, 12739, 12743, 12757, 12763, 12781, 12791, 12799, 12809, 12821, 12823, 12829, 12841, 12853, 12889, 12893, 12899, 12907, 12911, 12917, 12919, 12923, 12941, 12953, 12959, 12967, 12973, 12979, 12983, 13001, 13003, 13007, 13009, 13033, 13037, 13043, 13049, 13063, 13093, 13099, 13103, 13109, 13121, 13127, 13147, 13151, 13159, 13163, 13171, 13177, 13183, 13187])

# BRUTE FORCE APPROACH
# def count_coprime(input)
#     array = []
#     input.each do |i|
#         array << (1...i).count { |a| i.gcd(a) == 1 } #gcd function from integer class
#     end
#     print "The count of co prime for #{input} are #{array}\n"
# end

# def coprimeCount(input_array)
#     co_prime_count = []
#     input_array.each do |element|
#         co_prime_count << element.prime_division.inject(1) {|res, (pr,exp)| res *= (pr-1)* pr**(exp-1)}
#     end
#     return co_prime_count
# end