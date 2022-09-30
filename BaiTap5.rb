class Officer
    attr_accessor :name_264, :age_264, :gender_264, :address_264


    def initialize(name_264, age_264, gender_264, address_264) 
        @name_264 = name_264
        @age_264 = age_264
        @gender_264 = gender_264
        @address_264 = address_264
    end
end 

class Worker < Officer
    attr_accessor :level_264

    def initialize(name_264, age_264, gender_264, address_264, level_264) 
        super(name_264, age_264, gender_264, address_264)
        @level = level.to_i
    end


    def log() 
        puts "Worker: { 
            name: #{@name_264},
            age: #{@age_264},
            gender: #{@gender_264},
            address: #{@address_264},
            level: #{@level_264}
        }"
    end
end

class Staff < Officer
    attr_accessor :task_264

    def initialize(name_264, age_264, gender_264, address_264, task_264) 
        super(name_264, age_264, gender_264, address_264)
        @task_264 = task_264
    end


    def log() 
        puts "Staff: { 
            name: #{@name_264},
            age: #{@age_264},
            gender: #{@gender_264},
            address: #{@address_264},
            task: #{@task_264}
        }"
    end
end

class Engineer < Officer
    attr_accessor :branch_264

    def initialize(name_264, age_264, gender_264, address_264, branch_264) 
        super(name_264, age_264, gender_264, address_264)
        @branch_264 = branch_264
    end


    def log() 
        puts "Engineer: { 
            name: #{@name_264},
            age: #{@age_264},
            gender: #{@gender_264},
            address: #{@address_264},
            branch: #{@branch_264}
        }"
    end
end

class ManagerOfficer
    @@officers_264 = []

    def initialize() 
        @@officers_264 = []
    end

    def showListInforOfficer(officer) 
        @@officers_264 << officer
    end

    def searchOfficerByName(name)
        return @@officers_264.filter { |officer|officer.name == name}
    end    


    def showListInforOfficer() 
        for @@officers_264 in officer do 
            officer.log()
        end
    end
end



managerOfficer_264 = ManagerOfficer.new
number_264 = ""

while true
    puts "Quản lý cán bộ"
    puts "1. Thêm cán bộ"
    puts "2. Tìm kiếm theo họ tên"
    puts "3. Hiện thị thông tin về danh sách các cán bộ"
    puts "4. Thoát khỏi chương trình"
    number_264 = gets
    case number_264
    when "1"
        puts "Chọn a: kỹ sư"
        puts "Chọn b: công nhân"
        puts "Chọn c: nhân viên"
        type_264 = gets
        case type_264
        when "a"
            puts "Nhập họ tên"
            name_264 = gets
            puts "Nhập tuổi"
            age_264 = gets
            puts "Nhập giới tính"
            gender_264 = gets
            puts "Nhập địa chỉ"
            address_264 = gets
            puts "Nhập ngành đào tạo"
            branch_264 = gets
            engineer_264 = Engineer.new(name_264, age_264, gender_264, address_264, branch_264)
            managerOfficer_264.addOfficer(engineer_264)
            engineer_264.log()
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
            level_264  = gets
            worker_264 = Worker.new(name, age, gender, address, level_264 )
            managerOfficer.addOfficer(worker_264)
            worker_264.log()
            break
        when "c"
            puts "Nhập họ tên"
            name_264 = gets
            puts "Nhập tuổi"
            age_264 = gets
            puts "Nhập giới tính"
            gender_264 = gets
            puts "Nhập địa chỉ"
            address_264 = gets
            puts "Nhập công việc"
            task_264  = gets
            staff_264 = Staff.new(name_264, age_264, gender_264, address_264, task_264  )
            managerOfficer_264.addOfficer(staff_264)
            staff_264.log()
            break
        end
    when "2"
        puts "Nhập vào tên cần tìm"
        keyWord_264 = gets
        puts managerOfficer.searchOfficerByName(keyWord_264)
        break
    when "3"    
        managerOfficer.showListInforOfficer()
        break
    when "4"
        return
        break  
    end

end    