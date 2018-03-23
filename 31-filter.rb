# 过滤 filter
# 过滤就是将容器里的元素，根据某些条件过滤建立另一个容器。

# 例如过滤出所有偶数，首先示范一下传统的写法：

arr = [1,2,3,4,5,6,7,8,9,10]
# result = []
# arr.each do |i|
#     if ((i%2) == 0) 
#         result.push(i);
#     end
# end

# 改用 select 方法，这个方法接受一个匿名函式来决定条件：

result = arr.select{|i| i%2 == 0 }
puts result

