class MergeSort

  def sort(collection)
    #base case if collection length is one
    if collection.length == 1
      return collection
    end
    
    #divide the collection into two
    midpoint = (collection.length / 2)
    left_side = []
    right_side = []

    collection.each_with_index do |element, index|
      if index < midpoint
        left_side << element
      else
        right_side << element
      end
    end

    left_side = sort(left_side)
    right_side = sort(right_side)

    #combine the sub collection back together
    return merge(left_side, right_side)
  end

  def merge(left_side, right_side)
    combined = []

    while (!left_side.empty? && !right_side.empty?) do
      if left_side[0] < right_side[0]
        combined.push(left_side.shift)
      else
        combined.push(right_side.shift)
      end
    end
    
    while !left_side.empty? do
      combined.push(left_side.shift)
    end
    
    while !right_side.empty? do
      combined.push(right_side.shift)
    end
    
    return combined
  end
  
  
end

sorter = MergeSort.new
puts "#{sorter.sort(%w(l e t n c x i u y a p))}"