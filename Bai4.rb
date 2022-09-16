puts "Nhập so1: "
so1 = gets.to_i
puts "Nhập cạnh so2: "
so2 = gets.to_i
puts "Nhập cạnh so3: "
so3 = gets.to_i

puts "Tăng dần " + [so1, so2, so3].sort.join(" ")
puts "Giảm dần " + [so1, so2, so3].sort.reverse().join(" ")