# Write your code here.

def line(array)
  if array == []
    puts "The line is currently empty."
  else
    return_string = "The line is currently:"
    #i = 1
    array.each_with_index do |name, index|
      return_string += " #{index + 1}. #{name}"
      #i += 1
    end
      puts return_string
  end

end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line."
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end
