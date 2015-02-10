# TODO: Implement insert, find, delete

class Node
  attr_accessor :data,
                :right_node,
                :left_node

  def initialize(data=nil, left_node = nil, right_node = nil)
    @data         = data
    @left_node    = left_node
    @right_node   = right_node
  end

  def insert(value)
    if self.data.nil?
      self.data = value
      return
    elsif value > self.data
      @right_node = Node.new(value)
    else
      @left_node = Node.new(value)
    end
  end

end

