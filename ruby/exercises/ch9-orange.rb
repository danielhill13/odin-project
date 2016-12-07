class OrangeTree
  def initialize
    @treeHeight = 0
    @treeAge = 0
    @fruitBear = 0
  end

  def oneYearPasses
    if @treeAge < 4
      @treeAge = @treeAge + 1
      @treeHeight = @treeAge * 2
      puts 'A year has passed...'
      puts 'The tree is ' + @treeAge.to_s + ' years old.'
      puts 'The tree is ' + @treeHeight.to_s + ' feet tall.'
      puts 'This year, the tree bore ' + @fruitBear.to_s + ' oranges for eating.'
    elsif @treeAge < 15
      @treeAge = @treeAge + 1
      @treeHeight = @treeAge * 2
      @fruitBear = @treeAge * 7
      puts 'A year has passed...'
      puts 'The tree is ' + @treeAge.to_s + ' years old.'
      puts 'The tree is ' + @treeHeight.to_s + ' feet tall.'
      puts 'This year, the tree bore ' + @fruitBear.to_s + ' oranges for eating.'
    else
      puts 'The tree died of old age'
  end

  def pickAnOrange
    # subtract 1 from fruitBear
    if @fruitBear == 0
      puts 'No more oranges this year!'
    else
    @fruitBear = @fruitBear - 1
    puts 'After eating a delicious orange from the tree, there are ' + @fruitBear.to_s + ' oranges remaining.'
  end
  end
end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
