require 'pry'

class BubbleSort

  def sort(collection)
    if collection.length < 2
      puts "Array has less than two elements"
      return collection
    end

    sorted = false
    while !sorted do
      swapped = false
      index = 0
      while index < collection.length - 1 do
        if collection[index] > collection[index + 1]
          temp = collection[index + 1]
          collection[index + 1] = collection[index]
          collection[index] = temp
          swapped = true
        end
        index += 1
      end
      
      swapped == true ? sorted = false : sorted = true
    end
    return collection
  end
  
end

sorter = BubbleSort.new # need instance method
sorted_array = sorter.sort(%w(e t k j k q a o l p))
puts "#{sorted_array}"