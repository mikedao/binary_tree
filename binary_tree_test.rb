require './binary_tree'
require 'minitest/autorun'
require 'minitest/reporters'
require 'pry'

class BinaryTreeTest < Minitest::Test

  def test_it_can_insert
    tree = Node.new
    value = 5

    tree.insert(value)

    assert_equal value, tree.data
  end

end

