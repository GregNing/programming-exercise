# 给定一阵列内含数字，请输出 0~9 中不见的数字

def find_missing(arr)
    result = []
    
    (0..9).each do |i|
      result << i if !arr.include?(i)
      #result << i unless arr.include?(i)
    end

    return result
end

answer = find_missing( [2,2,1,5,8,4] )

puts answer.to_s # 应该是 [0,3,6,7,9]
