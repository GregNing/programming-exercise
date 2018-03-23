require 'active_support/core_ext'
[1,2,3].blank? # false
"blah".blank? # false
"".blank? # true

class Demo
  def return_nil
  end
end

Demo.new.blank? # false
Demo.new.return_nil.blank? # true