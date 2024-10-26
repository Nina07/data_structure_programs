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
		print_list
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
		print_list
	end

	def insert(index, val)
		if index > length_of_list
			append(val)
			return
		elsif @head.nil?
			@head = Node.new(val, nil)
			return @head
		elsif index == 0
			prepend(val)
			return
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

	def remove(index)
		return "The index is not valid" if index < 0
		counter = 0
		current_node = @head
		while counter < index-1
			current_node = current_node.next
			counter += 1
		end
		left_node = current_node
		unwanted_node = current_node.next
		left_node.next = unwanted_node.next
		print_list
		puts "Updated len: #{length_of_list}"
	end

	def lookup
	end

	def length_of_list
		current_node = @head
		len = 0
		while current_node.next != nil
			current_node = current_node.next
			len += 1
		end
		len
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
l.insert(0, 3)
l.insert(500,7)
l.remove(3)

# 5 -> 5 -> 45 -> 10 -> 7 -> 45