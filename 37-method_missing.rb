class Car
  def go(place)
    puts "go to #{place}"
  end

  def method_missing(name, *args)
    if name.to_s =~ /^go_to_(.*)/
      go($1)
    else
      super
    end
  end
end

car = Car.new

car.go_to_taipei
# go to taipei


car.blah # NoMethodError: undefined method `blah`