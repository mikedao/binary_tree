require './binary_tree'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BinaryTreeTest < Minitest::Test

  def setup
    @tree = Node.new
  end

  def test_it_can_insert
    value = 5

    @tree.insert(value)

    assert_equal value, @tree.data
  end

  def test_it_can_insert_many
    root_value = 5
    right_value = 12
    left_value = 3

    @tree.insert(root_value)
    @tree.insert(right_value)
    @tree.insert(left_value)

    assert_equal root_value, @tree.data
    assert_equal right_value, @tree.right_node.data
    assert_equal left_value, @tree.left_node.data
  end

  def test_it_can_insert_two_levels_deep
    root_value = 5
    right_value = 12
    left_value = 3
    deeper_value = 13

    @tree.insert(root_value)
    @tree.insert(right_value)
    @tree.insert(left_value)
    @tree.insert(deeper_value)

    assert_equal deeper_value, @tree.right_node.right_node.data
  end

  def test_find_method_find_things
   skip
   first = 5
   second = 12
   third  = 3
   test = 4

   @tree.insert(first)
   @tree.insert(second)
   @tree.insert(third)

   assert_equal true, @tree.find(first)
   assert_equal false, @tree.find(test)
  end

end

