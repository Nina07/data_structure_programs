class HashObject
    def initialize(key, value)
        @key = key.to_sym
        @value = value
    end
end

class Hashmap
    def initialize(key, val)
        @hash = HashObject.new(key, val)
    end

    # def add_pair(key, val)
    #     @hash[key] = val
    #     print_hash(@hash)
    # end

    # private
    def print_hash
        print @hash.inspect
    end
end

h = Hashmap.new('a', "apples")
h.print_hash