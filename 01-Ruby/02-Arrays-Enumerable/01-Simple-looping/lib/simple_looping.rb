def sum_with_while(min,max)
	count = min
	sum = min
	while  count < max
	   count += 1
	   sum += count
	end

	sum
end

def sum_with_for(min,max)
  sum =0
  for i in min..max
    sum = sum + i
  end
  sum

  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
end

def sum_recursive(min,max)
 return sum(sum_with_for)

  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

