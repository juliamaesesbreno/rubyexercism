class Array
  def accumulate
    out = [] #creates new array
    each { |i| out << yield(i) } #
    out
  end
end
