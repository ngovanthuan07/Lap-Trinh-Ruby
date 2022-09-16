puts "Nhập cạnh a: "
a = gets.to_f
puts "Nhập cạnh b: "
b = gets.to_f
puts "Nhập cạnh c: "
c = gets.to_f

def check_tam_giac(a,  b, c)
    if(a == 0 || b == 0 || c == 0)
        return false
    end
    if(a < 0 || b < 0 || c < 0)
        return false
    end
    if(a + b < c || a + c < b || b + c < a)
        return false
    end
    return true
end

def chu_vi_tam_giac(a, b, c)
    return a + b + c
end

def dien_tich_tam_giac(a, b, c)
    p = chu_vi_tam_giac(a, b, c)
    return Math.sqrt(p * (p -a) * (p -b) * (p -c))
end

if check_tam_giac(a, b, c)
    puts "Là tam giác"
    puts "Chu vi: " + chu_vi_tam_giac(a, b, c).to_s
    puts "Dien tich: " + dien_tich_tam_giac(a, b, c).to_s
else 
    puts "Không phải tam giác"
end
