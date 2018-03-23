#小于 1000 的最大的金额
tickets = [
  { name: "Ticket A", amount: 100 },
  { name: "Ticket B", amount: 1123 },
  { name: "Ticket E", amount: 990 },
  { name: "Ticket C", amount: 670 },
  { name: "Ticket D", amount: 50 },
  
]

# puts tickets
result = tickets[0][:amount]   # 一定要先在 code block 外面初始这个变量，如果放在里面，出来就被清掉了
puts result

tickets.each do |ticket|
  if (ticket[:amount] < 1000 && ticket[:amount] > result )
    result = ticket[:amount];
  end
end

result2 = tickets.map{|t| t[:amount]}.select{|a| a < 1000 }.reduce{|max , y| max > y ? max : y  }

puts result
puts result2
# 输出 990