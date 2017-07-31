class Series
  def initialize(series)
    @series = series.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError if @series.length < size
    @series.each_cons(size).to_a
  end
end
