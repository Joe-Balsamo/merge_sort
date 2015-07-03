def merge_sort(ary)
	if ary.length == 1
		return ary
	elsif ary.length == 2
    if ary.first <= ary.last
      ary
    else
      ary[0], ary[-1] = ary[-1], ary[0]
      ary
    end
  else
    left,right = ary.each_slice( (ary.size/2.0).round ).to_a
    return merge_sort(left).concat(merge_sort(right))
	end
end

p merge_sort([3,2,4,5,7])