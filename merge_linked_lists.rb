require './node'

class MergeSortedLinkedList
    def merge(l1, l2)
        merged_list = Node.new(0, nil)
        buffer = merged_list

        while l1 && l2
            if l1.value <= l2.value
                l3.next = l1
                l1 = l1.next
            else
                l3.next = l2.value
                l2 = l2.next
            end
            l3 = l3.next
        end
        l3.next = l1 || l2
        buffer.next
    end
end

m = MergeSortedLinkedList.new
l1 = Node.new()