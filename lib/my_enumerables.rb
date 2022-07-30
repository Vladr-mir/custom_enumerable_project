module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0.upto(self.length - 1)
      yield(self[i], i)
    end
    self
  end

  def my_select
    arr = []
    for i in self
      arr << i if yield(i)
    end
    arr
  end

  def my_all?
    arr = []
    for i in self
      arr << i if yield(i)
    end
    arr.length == self.length
  end

  def my_count
    return self.length unless block_given?

    arr = []
    for i in self
      arr << i if yield(i)
    end
    arr.length
  end

  def my_map
    return self unless block_given?

    arr = []
    for i in self
      arr << yield(i)
    end
    arr
  end

  def my_any?
    for i in self
      return true if yield(i)
    end
    false
  end

  def my_inject(sum)
    for i in self
      sum = yield(sum, i)
    end
    sum
  end

  def my_none?
    for i in self
      return false if yield(i)
    end
    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self
      yield(i)
    end
    self
  end
end
