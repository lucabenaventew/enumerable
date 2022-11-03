module MyEnumerable
  def all?
    answer = false
    @list.each do |item|
      answer = true if yield(item)
      return false unless yield(item)
    end
    answer
  end

  def any?
    @list.each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    even = []
    @list.select do |item|
      even.push(item) if yield(item)
    end
    even
  end
end
