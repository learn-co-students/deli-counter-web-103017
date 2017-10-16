katz_deli = []
def line(deli_line)
  if deli_line.length == 0
    puts "The line is currently empty."
  else
    line_order = "The line is currently:"
    deli_line.each_with_index {|person, number|
      line_order += " #{number + 1}. #{person}"
    }
    puts line_order
  end
end

def take_a_number(deli_line, person)
  if deli_line.length == 0
    deli_line.push(person)
    puts "Welcome, #{person}. You are number 1 in line."
  else
    deli_line.push(person)
    puts "Welcome, #{person}. You are number #{deli_line.find_index(person) + 1} in line."
  end
end

def now_serving(deli_line)
  if deli_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
    deli_line
  end
end
