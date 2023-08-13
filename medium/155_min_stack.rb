class MinStack
  attr_accessor :stack, :min_value

  def initialize()
    @stack = []
    @min_value = []
  end


=begin
  :type val: Integer
  :rtype: Void
=end
  def push(val)
    stack << val
    set_min_value(val)
  end


=begin
  :rtype: Void
=end
  def pop()
    stack.pop
    min_value.pop
  end


=begin
  :rtype: Integer
=end
  def top()
    stack[-1]
  end


=begin
  :rtype: Integer
=end
  def get_min()
    min_value[-1]
  end

  def set_min_value(value)
    if min_value[-1].nil? || value < min_value[-1]
      min_value << value
    else
      min_value << min_value[-1]
    end
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
