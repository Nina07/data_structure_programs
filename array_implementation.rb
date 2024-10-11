class ArrayImplementation
	def initialize
		@length = 0
		@data = []
	end

	def get(index)
		return @data[index]
	end

	def push(value)
		@data[@data.length] = value
		@length += 1
		return @data
	end

	def pop
		lastItem = @data[@data.length-1]
		@data.delete(lastItem)
		@length -= 1
		return lastItem
	end
end

ary = ArrayImplementation.new
ary.push('hi')
ary.push('you')
puts ary.inspect
puts ary.get(1)

ary.push('!')
puts ary.inspect
puts ary.pop
