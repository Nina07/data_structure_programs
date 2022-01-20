require './node'

class MyLinkedList
    def initialize(value)
        @head = Node.new(value, nil)   #the first element in a LL is its head
    end

    # O(1)
    def add_element(value)  # new element at the end, append
        if @head.nil?
            @head = Node.new(value, nil)
        else
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = Node.new(value, nil)
        end
        # puts "The list items after append are #{print_list}"
    end

    # O(1)
    def unshift(value)  # add data at the beginning, prepend
        if @head.nil?
            @head = Node.new(value, nil)
        else
            current_node = @head
            new_node = Node.new(value, nil)
            new_node.next = current_node
            @head = new_node
        end
        puts "The list items after unshift are #{print_list}"
    end

    # O(n)
    def insert(index, value)
        if @head.nil?
            @head = Node.new(value, nil)
            puts "The list was empty, hence item was inserted at the head position: #{print_list}"
        else
            puts "Older list: #{print_list}"
            current_node = @head
            i = 0
            while i < index-1
                current_node = current_node.next
                i += 1
            end
            new_node = Node.new(value, nil)
            new_node.next = current_node.next
            current_node.next = new_node
            puts "The new list looks like #{print_list}"
        end
    end

    # O(n)
    def delete_element(value)   # delete from anywhere in the list
        return "Nothing to delete, list is empty" if @head.nil?
        current_node = @head

        if current_node.data == value
            @head = current_node.next
        else
            while current_node.next != nil && current_node.next.data != value
                current_node = current_node.next
            end
            current_node.next = current_node.next.next
        end
        puts "The remaining list items are #{print_list}"
    end

    def reverse
        if @head.nil?
            return "list is empty!"
        elsif @head.next == nil
            return @head.data
        else
            puts "Original list: #{print_list}"
            first = @head
            second = first.next
            while (second)
                temp = second.next
                second.next = first
                first = second
                second = temp
            end
            @head.next = nil
            @head = first
            puts "reversed list: #{print_list}"
        end
    end

    def merge(l1, l2)
        puts l1
        merged_list = Node.new(0, nil)
        buffer = merged_list

        while l1 && l2
            if l1.data <= l2.data
                l3.next = l1
                l1 = l1.next
            else
                l3.next = l2.data
                l2 = l2.next
            end
            l3 = l3.next
        end
        l3.next = l1 || l2
        buffer.next
        puts l3.print_list
    end

    private
    # O(n)
    def print_list
        return "List is empty" if @head.nil?
        elements = []
        current_node = @head

        while current_node.next != nil
            elements << current_node.data
            current_node = current_node.next
        end
        elements << current_node.data    #being a while loop, it returns before appending the last element
        elements
    end

    def is_empty?
        return true if @head.nil?
    end
end

list1 = MyLinkedList.new(1)
list2 = MyLinkedList.new(1)
list1.add_element(2)
list1.add_element(22)
list1.add_element(23)
list1.add_element(24)

# list.unshift(7)

list1.insert(3, 78)
# list.reverse

# list1.merge(list1, list2)

# list.delete_element(24)
# list.delete_element(7)