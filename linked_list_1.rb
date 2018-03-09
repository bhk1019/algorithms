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

def reverse_list(list)
  reversed_list = Stack.new
  while list
    reversed_list.push(list.value)
    list = list.next_node
  end
  return reversed_list.data
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

print_values(reverse_list(node3))
