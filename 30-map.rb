# 映射 map
# 映射的意思就是将容器里面的元素，一对一变换成另一个新的容器。

# 例如我们想将以下的 arr 元素每一个都加一，首先示范一下传统的写法：
arr = [1,2,3,4,5,6,7,8,9,10]

#result = []
# arr.each do |i|
#   result.push(i+1)
# end

result = arr.map {|i| i+1 }

puts result
