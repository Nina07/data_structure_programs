def length_of_longest_substring(str)
    char_to_indices = {}
    longest = { length: 0, end: nil }
    str.each_char.with_index do |c,i|
        puts "chars to indices #{char_to_indices}"
        j = char_to_indices[c]
        if j
          longest = { length: char_to_indices.size, end: i-1 } if char_to_indices.size > longest[:length]
          puts "longest #{longest}"
          char_to_indices.reject! do |_, k| #{ |_,k| k <= j }
            k <= j
          end
        end
        puts "i #{i}"
        char_to_indices[c] = i
     end
     puts "at end - #{char_to_indices}"
     char_to_indices.size > longest[:length] ? { length: char_to_indices.size, end: str.size-1 } : longest.size
end

length_of_longest_substring("abcabcbb")