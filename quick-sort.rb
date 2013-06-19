# quick-sort.rb
# author: hrk623
# date: 2013/06/19

def quicksort(lst)
  if lst.size <= 1
    return lst
  else
    pivot = lst.shift
    return quicksort(lst.select{|x| x <= pivot}) +
           [pivot] +
           quicksort(lst.select{|x| x > pivot})
  end
end

lst = [30, 20, 10]
print quicksort(lst)

