# Make an OrangeTree class. It should have a  height method which returns its height, and a
# oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows
# taller (however much you think an orange tree should grow in a year), and after some number
# of years (again, your call) the tree should die. For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce more each year than younger
# trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges
# (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount
# by one and returns a string telling you how delicious the orange was, or else it just tells you that
# there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall
# off before the next year.
class OrangeTree
  def initialize
    @treeHeight = 0
    @treeAge = 0
    @fruitBear = 0
  end

  def oneYearPasses
    # initialize new fruit. Fruit is 5 x treeAge
    # Increase height. Height is 1.5 x treeAge
    if @treeAge < 15
      @treeAge = @treeAge + 1
      @treeHeight = @treeAge * 1.5
      @fruitBear = @treeAge * 5
      puts 'A year has passed...'
      puts 'The tree is ' + @treeAge.to_s + ' years old.'
      puts 'The tree is ' + @treeHeight.to_i.to_s + ' feet tall.'
      puts 'This year, the tree bore ' + @fruitBear.to_s + ' oranges for eating.'
    else
      puts 'The tree died of old age'
  end

  def pickAnOrange
    # subtract 1 from fruitBear
    @fruitBear = @fruitBear - 1
    puts 'After eating a delicious orange from the tree, there are ' + @fruitBear.to_s + ' oranges remaining.'
  end
end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
