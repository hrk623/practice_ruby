# quick-select.rb
# author: hrk623
# date: 2013/06/20

def quickselect(lst, k)
  if lst.size <= 1
    return lst[0]
  else
    medians = []
    lst.each_slice(5).to_a.each{|g| medians << g.sort[g.size/2]}
    pivot = quickselect(medians, lst.size/10)
    left, right = lst.select{|x| x < pivot}, lst.select{|x| x > pivot}
    l = left.size
    if k == l + 1
      return pivot
    elsif k <= l
      return quickselect(left, k)
    else
      return quickselect(right, k-l-1)
    end
  end
end

