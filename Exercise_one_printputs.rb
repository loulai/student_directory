
def print(x)
  puts "#{x}\n"
  end

def input_students
  print "Please enter the name of the student"
  print "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do    
 
    students << {:name => name, :cohort => :March}    
    print "Now we have #{students.length} students"

    name = gets.chomp
  end

  students
end

def print_header
  print "The students of my cohort at Makers Academy"
  print "-------------"
end

def display(names)
  names.each do |name|
    print "#{name[:name]} #{name[:cohort]}"
  end
end


def print_footer(names)
  print "Overall, we have #{names.length} great students"
end

students = input_students
print_header
display(students)
print_footer(students)

