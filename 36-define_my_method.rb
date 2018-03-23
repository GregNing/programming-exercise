class A
  def self.define_my_method(x)
    define_method("output_#{x}") do
      puts "This is #{x}"
    end
  end
end

class B < A
  define_my_method :foo # 定义 output_foo 方法
end

class C < A
  define_my_method :bar # 定义 output_bar 方法
end

class D < A    
  define_my_method :add
end

B.new.output_foo # 输出 This is foo
C.new.output_bar # 输出 This is bar
D.new.output_add
