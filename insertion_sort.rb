class InsertionSort

  def sort(collection)
    sorted_elements = []

    collection.each do |element|
      if sorted_elements.empty?
        sorted_elements.push(element)
      else
        index = 0
        while index < sorted_elements.length do
          if element > sorted_elements[index]
            index += 1
            if index == sorted_elements.length - 1
              sorted_elements.push(element)
              break
            end
          else
            sorted_elements.insert(index, element)
            break
          end
        end
      end  
    end
    return sorted_elements
  end
  
  def sort_in_place(collection)
    index_empty = 0
    element = 0

    for index in (0...collection.length) do
      #find value to be inserted
      element = collection[index]
      index_empty = index

      #location position to insert
      while index_empty > 0 and collection[index_empty - 1] > element do
        collection[index_empty] = collection[index_empty - 1]
        index_empty -= 1
      end
      collection[index_empty] = element
    end
    return collection
  end
  
end

sorter = InsertionSort.new

puts "#{sorter.sort(%w(l e a n e t o x n q))}"
puts "#{sorter.sort_in_place(%w(l e a n e t o x n q))}"