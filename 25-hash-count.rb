# 计算一个阵列中各个元素的出现频率

def count(arr)
  h = Hash.new
  c=0
  arr.each do |i|    
  #  h.merge!("#{i}":0)  
    # h["#{i}"] = arr.count(i)
  end
  arr.uniq{|x| h["#{x}"] = arr.count(x)}

  # h[arr.uniq] = 0
  
    #puts Hash[arr.each_slice(2).to_a]
  
  return h # 回传一个 hash
end

arr =  ["a", "d", "d", "c", "b", "c", "c", "c", "d", "d", "e", "e", "e", "d", "a", "c", "e", "a", "d", "e"]

answer = count(arr)

puts answer # 答案应该是 {"a"=>3, "d"=>6, "c"=>5, "b"=>1, "e"=>5}

