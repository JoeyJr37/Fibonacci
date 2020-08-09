# 1. Write a method #fibs which takes a number and returns that many members of the fibonacci sequence. Use iteration for this solution.

def fibs(upto_number)
    results = [0,1]
    adjusted_number = upto_number - 2
    adjusted_number.times do |i|
        results.push(results[i]  + results[i+1])
    end
    p results
end

# puts "How many members of the Fibonacci sequence would you like to see?"
# answer = gets.chomp.to_i
# fibs(answer)
        
# 2. Now write another method #fibs_rec which solves the same problem recursively. 
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either of these lengths a requirement… just get it done).


def fibs_rec(array, upto_number)
    if upto_number == 1
        array.push(0)
    elsif upto_number == 2
        fibs_rec(array, 1)
        array.push(1)
    else
        fibs_rec(array, upto_number - 1)
        array.push(array[upto_number - 3] + array[upto_number - 2])
    end
end

p fibs_rec([], 8)
p fibs_rec([], 10)
        # => [0, 1, 1, 2, 3, 5, 8, 13]
        # => [0, 1, 1, 2, 3, 5, 8, 13, 21]


