#!/bin/ruby

require 'json'
require 'stringio'


class Node
    attr_accessor :left, :right
    
    def initialize(data)
        data = data
    end
    
    def getLeafNodeCount(node)
        if node.nil?
            return 0
        elsif (node.left.nil? && node.right.nil?)
            return 1        
        else
            return getLeafNodeCount(node.left) + getLeafNodeCount(node.right)
        end
    end
end

root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)

count_nodes = Node.new(1)
puts count_nodes.getLeafNodeCount(root)

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# nodes_count = gets.strip.to_i

# nodes = Array.new(nodes_count)

# nodes_count.times do |i|
#     nodes_item = gets.strip.to_i
#     nodes[i] = nodes_item
# end

# result = getLeafNodeCount nodes

# fptr.write result
# fptr.write "\n"

# fptr.close()
