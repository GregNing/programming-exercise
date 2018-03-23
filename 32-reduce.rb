arr = [1,2,3,4,5,6,7,8,9,10]

# result = 0;
# arr.each do |i|
#   result  += i
# end
#改用 reduce 方法
result = arr.reduce(0){ |sum, i|  sum + i}
#result 比较难理解一点：reduce 的第一个参数 0 是初始值，然后这个匿名函式依序走访容器，
#两个参数 sum 跟 i，前者 sum 是前一次循环的回传结果。i 是这次走访的元素。
puts result
# 输出 55

arr2 = [9, 2, 10, 6, 2, 4, 5, 6, 0, 4]
max = arr2.reduce do |max , i|
    if max > i
        max  
    else
        i
    end
end
puts max
