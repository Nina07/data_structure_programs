require './node'

class LinkedList
    def is_empty?
        return true if @head == nil
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
    def pop
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

    def self.addition(list1, list2)
        puts list1.each {|i| i.data}
        # puts list2.inspect
    end
end

list1 = LinkedList.new
list2 = LinkedList.new

list1.push(1)
list1.push(2)
list1.push(4)
list2.push(3)
list2.push(5)
list2.push(6)

LinkedList.addition(list1, list2)
