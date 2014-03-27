require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    # If the array is empty return a result
    if array.length == 0
      false
    # Otherwise call your helper _bsearch method
    else
      self._bsearch(array, element, 0, array.length)
    end

  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return
    if (array[start_index] == array[end_index])
    
    return (array[start_index] == element)
    
    else  
    # Otherwise, find the midpoint
     mid = start_index + (end_index - start_index) / 2
      
    # binding.pry
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array
     #
     if (
      ((array.length <= 2) && (array[start_index] != element)) &&
      ((array.length <= 2) && (array[end_index] != element)) 
     )
      return false

      elsif ((array[start_index] == element) || (array[-1] == element) || (array[mid] == element))
      return true

      elsif (element < array[mid])
        self._bsearch(array[0..mid], element, 0, mid + 1)
      else
        self._bsearch(array[mid..(array.length)], element, mid + 1, array[-1])
      end
     
    end
  end
end
