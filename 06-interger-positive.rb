# 题目: 输入一个数字 x，请判断是否正数、零或负数，以及是不是偶数


print "请输入一个整数，然后按 Enter: "
x = gets.to_i

# ....
result = ''
result2 = ''

if x  > 0
   result = "正數" 
elsif x == 0
    result = "零"
else
    result = "負數"
end

if x/2 == 0
   result2 = "正數" 
else
   result2 = "奇數"  
end


puts "这个数是#{result}"
puts "这个数是#{result2}"