class HashObject
	def initialize(key, value)
		@hash = {}
		@hash[key.to_sym] = value
	end

	def []=(key, val)
		@hash[key.to_sym] = val
	end
end

class HashMap
	def initialize(key, val)
		@hash = HashObject.new(key, val)
	end

	def add_pair(k, v)
		@hash[k] = v
		print_
	end

	def print_
		print @hash.inspect
	end
end

h = HashMap.new('orange', 4)
h.print_
h.add_pair('avacado',2)

