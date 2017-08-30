puts 'The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this:
{’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.'

class SmartTree
  attr_accessor :children, :node_name

  def initialize(hash)
    hash.each do |key, value|
      @node_name = key
      @children = []

      value.each { |k, v| children.push(SmartTree.new({ k => v })) }
    end
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end

puts
puts

puts 'Initializing our tree with provided data'

puts
puts

tree = SmartTree.new({
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {}
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {}
    }
  }
})

puts 'Visiting a node'
tree.visit { |node| puts node.node_name }
puts

puts 'Visiting entire tree'
tree.visit_all { |node| puts node.node_name }
