class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
end

class Student < Human
    attr_accessor :math, :physical, :chemistry

    def initialize(name, hair, weight, height, age, phone, email, nation,math, physical, chemistry) 
        super(name, hair, weight, height, age, phone, email, nation)
        @math = math.to_f
        @physical = physical.to_f
        @chemistry = chemistry.to_f
    end

    def average
        return (@math + @physical + @chemistry) / 3
    end
end

def print_student(students)
    for student in students do
        puts "Student: #{student.name} - #{student.average}"
    end
end 

students = []

students << Student.new("Nguyen Van A", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 7, 8, 9)
students << Student.new("Nguyen Van B", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 6.6, 8, 7)
students << Student.new("Nguyen Van C", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 5, 7, 10)
students << Student.new("Nguyen Van D", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 9, 7.6, 6)
students << Student.new("Nguyen Van E", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 7, 8, 9)
students << Student.new("Nguyen Van F", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 9, 5.6, 6)
students << Student.new("Nguyen Van G", "Black", 60, 170, 18, "123456789", "nguyenvana@gamil.com", "Viet Nam", 7, 7, 4)

puts "=========== Before Sort =========="
print_student(students)



puts "=========== Increase =========="
students.sort! { |a, b|  a.average <=> b.average }
print_student(students)


puts "=========== Decrease =========="
students.sort! { |a, b|  b.average <=> a.average }
print_student(students)
