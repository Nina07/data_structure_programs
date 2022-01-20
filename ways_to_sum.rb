nums=[1,3,4]
n=5
table={0=>1}

1.upto(n) { |i|
  table[i] = 
    nums.map do |num|
        print table[i-num].to_i
        table[i-num].to_i
    end.reduce(:+)
}
puts table