def sum_odd_indexed(array)
  array.each_with_index do |element, index|
    array[element.odd?]
 end
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
end

def even_numbers(array)
  array.each_with_index do |element, index|
    array[element.even?]
  end
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
end

def short_words(array, max_length)
  array.reject{|element| element_lenght < max_lenght}
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  array.find {|element| element < limit}
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  array.map {|element| element + "!"}
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def product(array)
  array.reduce { |element,value| element*value }
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  result= []
  array.each_slice(2) {|couple| result << couple.sort }
  result


  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
end


