# Write your code here.

def line(array)
  message = ""
  if array.size == 0
    message = "The line is currently empty."
  else
    message = "The line is currently: "
    array.each do |name|
      message += "#{array.index(name) + 1}. #{name} "
    end
  end
  puts "#{message.strip}"
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.index(name) + 1} in line."
  array
end

def now_serving(array)
  message = ""
  if array.size == 0
    message = "There is nobody waiting to be served!"
  else
    message = "Currently serving #{array.shift}."
  end
  puts "#{message}"
  array
end
