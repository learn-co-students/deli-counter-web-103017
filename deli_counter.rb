katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]

def line(array)
  puts "The line is currently empty." if array.length == 0
  new_line = []
  if array.length > 0
    new_line = array.map.with_index(1) do |name, index|
      "#{index}. #{name}"
    end
    who_line = new_line.join(" ")
    puts "The line is currently: " + who_line
  end
end


def take_a_number(array, name)
  array << name
  num = array.index(name)
  line_num = num + 1
  puts "Welcome, #{name}. You are number #{line_num} in line."
end

def now_serving(array)
  puts "There is nobody waiting to be served!" if array.length == 0
  if array.length > 0
    served = array.shift
    puts "Currently serving #{served}."
  end
end
