class Node 

attr_accessor :value, :left, :right

def initialize(value)
  @value = value
  @left = nil
  @right = nil
end

def children
  [@left, @right].compact
end


def has_children
  @left && @right
end

end


# build graph

root = Node.new(1)
child_one = Node.new(2)
child_two = Node.new(3)
root.left = child_one
root.right = child_two

second_child_one = Node.new(4)
second_child_two = Node.new(5)
child_one.left = second_child_one
child_one.right = second_child_two

child_two_child_one = Node.new(6)
child_two_child_two = Node.new(7)
left_node = Node.new(8)
child_two.right = child_two_child_one
child_two.left = left_node
child_two_child_one.right = child_two_child_two


#put in root and target value

def dfs(node, target)
  return node if node.value == target
  return nil if node.children.empty?
  node.children.each do |n|
    result = dfs(n, target)
    return result unless result.nil? 
  end
  nil
end

res = dfs(root, 8)
puts "Depth First Search Result: " + res.to_s
puts "Value: " + res.value.to_s










