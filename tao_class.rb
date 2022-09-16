
class SinhVien 
    attr_accessor :toan, :ly, :hoa

    def nhapThongTinSV
        puts "Nhập điểm toán"
        @toan = gets.to_i
        puts "Nhập điểm lý"
        @ly = gets.to_i
        puts "Nhập điểm hoá"
        @hoa = gets.to_i
    end

    def diemTrungBinh
        puts "Điểm trung bình: #{(@toan + @ly + @hoa) / 3}"
    end
end

sinhvien = SinhVien.new
sinhvien.nhapThongTinSV
sinhvien.diemTrungBinh