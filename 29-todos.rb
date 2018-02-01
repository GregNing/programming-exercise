# 简易 Todo 代办事项应用

text = File.read("todos.txt")

todos = []
text.each_line do |line|
  todos << line.chomp
end

todos.each_with_index do |todo, index|
  puts "#{index}: #{todo}"
end

File.open("todos.txt", "w+") do |f|

while (true)
  print "请输入指令 1. add 2. remove 3. save，然后按 Enter: "
  command = gets.chomp
#注意：gets 读到的字符串，最后都会有一个换行符号，这是一个萤幕不可见的字符，
#在字符串中用 "\n"表示。用 chomp 方法可以去除字符串前后的空白和换行符号 "\"。
  if command == "add"
    n = gets.chomp
    todos << n
    todos.each_with_index do |todo, index|
      puts "#{index}: #{todo}"
    end
    # ...
  elsif command == "remove"
    print "请输入要删除的编号: "
    todos.delete_at(gets.chomp.to_i)
    todos.each_with_index do |todo, index|
      puts "#{index}: #{todo}"
    end
  elsif command == "save"     
   File.open("todos.txt", "w+") do |f|
       todos.each do |todo|
         f << todo
         f << "\n"
       end
     end
    break;
  else
    puts "看不懂，请再输入一次"
  end
end

end