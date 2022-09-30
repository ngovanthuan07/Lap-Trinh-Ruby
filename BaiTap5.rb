class Officer
    attr_accessor :name, :age, :gender, :address


    def initialize(name, age, gender, address) 
        @name = name
        @age = age
        @gender = gender
        @address = address
    end
end 

class Worker < Officer
    attr_accessor :level

    def initialize(name, age, gender, address, level) 
        super(name, age, gender, address)
        @level = level.to_i
    end


    def log() 
        puts "Worker: { 
            name: #{@name},
            age: #{@age},
            gender: #{@gender},
            address: #{@address},
            level: #{@level}
        }"
    end
end

class Staff < Officer
    attr_accessor :task

    def initialize(name, age, gender, address, task) 
        super(name, age, gender, address)
        @task = task
    end


    def log() 
        puts "Staff: { 
            name: #{@name},
            age: #{@age},
            gender: #{@gender},
            address: #{@address},
            task: #{@level}
        }"
    end
end

class Engineer < Officer
    attr_accessor :branch

    def initialize(name, age, gender, address, branch) 
        super(name, age, gender, address)
        @branch = branch
    end


    def log() 
        puts "Engineer: { 
            name: #{@name},
            age: #{@age},
            gender: #{@gender},
            address: #{@address},
            branch: #{@branch}
        }"
    end
end

class ManagerOfficer
    @@officers = []

    def initialize() 
        @@officers = []
    end

    def showListInforOfficer(officer) 
        @@officers << officer
    end

    def searchOfficerByName(name)
        return @@officers.filter { |officer|officer.name == name}
    end    


    def showListInforOfficer() 
        for @@officers in officer do 
            officer.log()
        end
    end
end



managerOfficer = ManagerOfficer.new
number = ""

while true do
    puts "Quản lý cán bộ"
    puts "1. Thêm cán bộ"
    puts "2. Tìm kiếm theo họ tên"
    puts "3. Hiện thị thông tin về danh sách các cán bộ"
    puts "4. Thoát khỏi chương trình"
    number = gets

    case number
    when "1"
        puts "Chọn a: kỹ sư"
        puts "Chọn b: công nhân"
        puts "Chọn c: nhân viên"
        type = gets
        case type
        when "a"
            puts "Nhập họ tên"
            name = gets
            puts "Nhập tuổi"
            age = gets
            puts "Nhập giới tính"
            gender = gets
            puts "Nhập địa chỉ"
            address = gets
            puts "Nhập ngành đào tạo"
            branch = gets
            engineer = Engineer.new(name, age, gender, address, branch)
            managerOfficer.addOfficer(engineer)
            engineer.log()
            break
        when "b"
            puts "Nhập họ tên"
            name = gets
            puts "Nhập tuổi"
            age = gets
            puts "Nhập giới tính"
            gender = gets
            puts "Nhập địa chỉ"
            address = gets
            puts "Nhập bậc"
            level  = gets
            worker = Worker.new(name, age, gender, address, level )
            managerOfficer.addOfficer(worker)
            worker.log()
            break
        when "c"
            puts "Nhập họ tên"
            name = gets
            puts "Nhập tuổi"
            age = gets
            puts "Nhập giới tính"
            gender = gets
            puts "Nhập địa chỉ"
            address = gets
            puts "Nhập công việc"
            task  = gets
            staff = Staff.new(name, age, gender, address, task  )
            managerOfficer.addOfficer(staff)
            staff.log()
            break
        end
    when "2"
        puts "Nhập vào tên cần tìm"
        keyWord = gets
        puts managerOfficer.searchOfficerByName(keyWord)
        break
    when "3"    
        managerOfficer.showListInforOfficer()
        break
    when "4"
        return
        break    
    end

end    