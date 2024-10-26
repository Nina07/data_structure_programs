class Node
	attr_accessor :next, :value, :prev

	def initialize(val, next_node)
		@value = val
		@next = next_node
		@prev = prev
	end
end

class DoublyLinkedList
	def initialize(val)
		@head = Node.new(val, nil)
	end

	def append(val)
		if @head.nil?
			@head = Node.new(val, nil)
		else
			new_node = Node.new(val, nil)
			current_node = @head
			while current_node.next != nil
				current_node = current_node.next
			end
			current_node.next = new_node
			new_node.prev = current_node
		end
		print_list
	end

	def print_list
		return "Empty list" if @head.nil?
		current_node = @head
		ary = Array.new
		while current_node.next != nil
			ary << current_node.value
			current_node = current_node.next
		end
		ary << current_node.value
		print "LL: #{ary} \n"
	end
end

d = DoublyLinkedList.new(4)
d.append(6)
d.append(7)
print d.inspect