puts "Nhập số (num1): "
num1 = gets.to_i
puts "Nhập số (num2): "
num2 = gets.to_i

result = num1 > num2 ? num1 : num2
puts "Kết quả: #{result}"