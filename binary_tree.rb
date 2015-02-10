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
    elsif value > self.data && self.right_node.nil?
      self.right_node = Node.new(value)
    elsif value < self.data && self.left_node.nil?
      self.left_node = Node.new(value)
    elsif value > self.data && self.right_node
      self.right_node.insert(value)
    elsif value < self.data && self.left_node
      self.left_node.insert(value)
    end
  end

  def find(value)
    if self.data == value || self.right_node.data == value || self.left_node.data == value
      return true
    elsif
    end

end

