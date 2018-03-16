class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    if @data == nil
      @data = LinkedListNode.new(value, nil)
    else
      @data = LinkedListNode.new(value, @data)
    end
  end

  def pop
    if @data == nil
      return nil
    else
      output = @data
      @data = @data.next_node
      return output.value
    end
  end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  if list == nil
    return previous
  end
  next_node = list.next_node
  list.next_node = previous
  reverse_list(next_node, list)
end

def is_infinite?(list)
  tortoise = list
  hare = list
  
  loop do
    if hare == nil
      return false
    else
      hare = hare.next_node
      if hare == nil
        return false
      else
        hare = hare.next_node
        tortoise = tortoise.next_node
        break if hare == tortoise
      end
    end
  end
  return true
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(25, node3)
node5 = LinkedListNode.new(29, node4)
node6 = LinkedListNode.new(84, node5)
node7 = LinkedListNode.new(100, node6)
node1.next_node = node7

puts is_infinite?(node7)

# print_values(node4)

# print_values(reverse_list(node4))