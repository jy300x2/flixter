class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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

class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    
    def pop
      # find last node...  where last node == a node where next_node == nil  
      value = @data.value
      @data = @data.next_node
      value
    rescue
      nil
    end
    
    def print_values
      
    end
    
end

def reverse_list(list)
    reverse_stack = Stack.new
    while popped = list.pop 
      reverse_stack.push(popped)
    end
    reverse_stack
end

stack = Stack.new 
stack.push(88)
stack.push(2)
stack.push(34)
stack.push(100)
stack.push(534)

#puts stack.pop
#puts stack.pop 
#puts stack.pop



print_values(stack.data)
revlist = reverse_list(stack)
print_values(revlist.data)
