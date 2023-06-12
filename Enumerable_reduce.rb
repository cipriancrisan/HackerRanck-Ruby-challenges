def sum_terms(n)
  # Use the reduce method to calculate the sum of n elements, where tn = n^2 + 1
  # Reduce is an enumerable method that aggragate elements into a single value

  if n == 0
    n * n + 1
  elsif n > 0
    (1..n).reduce(0) { |sum, n| sum + n^2 + 1 }
  else
    puts "Please insert positive integers!"
  end

  # (1..n) --> create the range of n elements (collection)
  # .reduce(0) --> call the reduce method with an initial value set to 0
  # { |sum, n| sum + n^2 + 1 } <--> { |accumulator, element| block }
end

puts sum_terms(10)
