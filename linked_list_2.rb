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
  # set list's node to nil
  # set previous's node to list
  # call again, with list = previous, and previous = previous's old node
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(25, node3)

print_values(node4)

print_values(reverse_list(node4, node3))