# 使用者不断输入数字存进 Array，最后输出总和、平均、最大值、最小值

arr = []
total = 0
averge = 0
max = 0
min = 0
while (true)
  print "请输入数字，结束请直接按 Enter: "
  user_input = gets
  if user_input == "\n"
     arr.each do |i|
    total += i
    if max < i          
      max = i
    end 
    if min > i
      min = i
    end
    averge = (total/ arr.length)
    end

    break
  else
    arr << user_input.to_i    
  end
end

puts arr.to_s

puts "总和是 #{total}"
puts "平均是 #{averge}"
puts "最大值是 #{max}"
puts "最小值是 #{min}"