require "./node"

class UniqueLinkedList
    def is_empty?
        if @head == nil
            true
        else
            false
        end
    end

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

    def delete_duplicate_data
        list_array = []
        if self.is_empty?
            return "The linked list is empty"
        else
            current_node = @head
            while current_node.next != nil
                list_array << current_node.data
                current_node = current_node.next
            end
        end
        list_array.reject {|x| list_array.count(x) > 1} # in case we want to return list with only distinct values, not even one occurence of the ones that were repeated
        # list_array.uniq - in case we want distinct
        create_unique_list(list_array)
    end
end

list = UniqueLinkedList.new
list.push(1)
list.push(2)
list.push(3)
list.push(3)
list.push(4)
list.push(4)
list.push(5)

list.delete_duplicate_data
puts list.inspect