require 'pry'

class BubbleSort
  def sort(array)
    @array = array
    if @array.length < 2
      puts "Array has less than two elements"
      return
    end
    
    sorted = false
    first_pointer = 0
    second_pointer = 1
    
    while !sorted do
      swaps = 0
      current_element = @array[first_pointer]
      next_element = @array[second_pointer]

      if current_element > next_element
        swap(first_pointer, second_pointer)
        swaps += 1
      end

      first_pointer += 1
      second_pointer += 1
      
      if second_pointer == (@array.length) #second pointer reaches end of array
        first_pointer = 0
        second_pointer = first_pointer + 1
        
        if swaps == 0
          sorted = true
        else
          swaps = 0 #reset swaps counter
        end
      end

    end
    return @array
  end

  def swap(index1, index2)
    temp = @array[index1]
    @array[index1] = @array[index2]
    @array[index2] = temp
  end
  
  
end


sorter = BubbleSort.new # need instance method
sorted_array = sorter.sort(["d", "b", "a", "c"])
puts sorted_array