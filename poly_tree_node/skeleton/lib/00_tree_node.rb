class PolyTreeNode
  attr_accessor :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value
  end

  def parent=(node)
    if @parent != nil
      @parent.children.delete(self)
    end

    @parent = node
    node.children << self if node != nil
  end

  def add_child(child_node)
    child_node.parent=(self)
  end

  def remove_child(child_node)
    raise "not a child node" unless self.children.include?(child_node)
    child_node.parent=(nil)
  end
end
