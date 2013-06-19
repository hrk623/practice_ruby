# merge-sort.rb
# author: hrk623
# date: 2013/06/19

def mergesort(lst)
  if lst.size <= 1
    return lst
  else 
    left = mergesort(lst[0...lst.size/2])
    right = mergesort(lst[lst.size/2...lst.size])
    sorted = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    return sorted + left + right
  end
end
