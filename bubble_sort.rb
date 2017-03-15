require 'pry'

class BubbleSort
  def sort(collection)
    if collection.length < 2
      puts "Array has less than two elements"
      return collection
    end

    sorted = false
    swapped = false
    while !sorted do
      (collection.length - 1).times do |iteration|
        #puts "#{collection}"
        index = iteration
        if collection[index] > collection[index + 1]
          temp = collection[index + 1]
          collection[index +1] = collection[index]
          collection[index] = temp
          swapped = true
        end
      end

      if swapped == false #no swaps, finish bubble sort
        sorted = true
      end
      swapped = false #reset swapped flag
    end
    return collection
  end
end

sorter = BubbleSort.new # need instance method
sorted_array = sorter.sort(%w(e t k j k q a o l p))
puts sorted_array