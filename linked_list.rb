require './node'

# linked list is composed of nodes. Each node has data, and points to the next node.
class LinkedList
    def is_empty?
        if @head == nil
            return true
        else
            return false
        end
    end

    # given some data, create a new node at the END
    def push(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            current_node = @head
            new_node = Node.new(data)
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = new_node
        end
    end

    # add a new node in the FRONT
    def unshift(data)
        if self.is_empty?
            @head = Node.new(data)
        else
            curr_head = Node.new(data)
            curr_head.next = @head
            @head = curr_head
        end
    end

    # removed data from END and return it 
    def pop(data)
        if self.is_empty?
            return "Linked list is already empty"
        else
            current_node = @head
            while current_node.next.next != nil
                current_node = current_node.next
            end
            last_node = current_node.next
            current_node.next = nil # making the new last elements's next value nil
        end
        last_node # returing the deleted node
    end

    # removing from the TOP and return it 
    def shift
        if self.is_empty?
            return "Linked list is already empty"
        else
            current_head = @head
            new_head = current_head.next
            @head.next = nil # old head does not point to anything anymore
            @head = new_head
        end
        current_head # returning the old head
    end

    # return the length of the linked list
    def size
        if self.is_empty?
            count = 0
        else
            count = 1
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
                count += 1
            end
        end
        count
    end

    # return the elements of linked list an an array
    def pretty_print
        array = []
        current_node = @head
        if self.is_empty?
            return "The list is empty!"
        else
            while current_node.next != nil
                array << current_node.data
                current_node = current_node.next
            end
            array << current_node.data
        end
        array
    end

    # clear the whole linked list
    def clear
        @head = nil
    end
end

list = LinkedList.new

list.push(1)
list.push(2)
list.push(4)
list.push(3)
list.push(5)
list.push(6)
# puts list.inspect

list.unshift(8)

list.pop(6)
puts list.inspect