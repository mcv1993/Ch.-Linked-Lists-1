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

  # Push a value onto the stack
  def push(value)
      @data = LinkedListNode.new(value, @data)
  end


  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      # I RETURN A VALUE
      if @data.nil?
        return "Empty"
      end
    value = @data.value
    @data = @data.next_node
    value
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
@stack = Stack.new

while list
  #puts list.value
  num = @stack.push(list.value)
    value = list.value
    list = list.next_node
    value
end
num
  
end


stack = Stack.new

stack1 = stack.push(1)
stack2 = stack.push(2)
stack3 = stack.push(3)

print_values(stack3)

puts "--------------------------" 

revlist = reverse_list(stack3)

print_values(revlist)

