class Node
	attr_accessor :next, :value
	def initialize(value, next_node=nil)
		@value = value
		@next = next_node
	end
end


class LinkedList
	def initialize(val)
		@head = Node.new(val, nil)
	end

	def append(val)
		if @head.nil?
			@head = Node.new(val, nil)
		else
			current_node = @head
			while current_node.next != nil
				current_node = current_node.next
			end
			current_node.next = Node.new(val, nil) 
		end
	end

	def prepend(val)
		if @head.nil?
			@head = Node.new(val, nil)
		else
			new_node = Node.new(val,nil)
			new_node.next = @head
			current_node = @head
			while current_node.next != nil 
				current_node = current_node.next
			end
			@head = new_node
		end
	end

	def insert(index, val)
		print_list
		if @head.nil?
			@head = Node.new(val, nil)
			return @head
		else
			current_node = @head
			new_node = Node.new(val, nil)
			count = 0
			while count < index-1
				current_node = current_node.next
				count += 1
			end
			new_node.next = current_node.next
			current_node.next = new_node
		end
		print_list
	end

	def print_list
		ary = []
		current_node = @head
		while current_node.next != nil
			ary << current_node.value
			current_node = current_node.next
		end
		ary << current_node.value
		print "Linked list: #{ary} \n"
	end
end

l = LinkedList.new(5)
puts l.inspect
l.print_list
l.append(10)
#l.print_list
l.append(45) # 5 -> 10 -> 45
#l.print_list
# l.prepend(20)
l.print_list
l.prepend(8) # 8-> 5-> 10 -> 45
#l.print_list
l.insert(2, 40)
# l.insert(4,7)

# 5 -> 5 -> 45 -> 10 -> 7 -> 45