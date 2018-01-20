class Node 

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
left = Node.new(8)
child_two.right = child_two_child_one
child_two.left = left
child_two_child_one.right = child_two_child_two


#put in root and target value

def dfs(node, target)
  return nil if node.nil?
  return node if node.value == target
  left = dfs(node.left, target) if node.left
  right = dfs(node.right, target) if node.right
  left || right
end


p dfs(root, 7)







