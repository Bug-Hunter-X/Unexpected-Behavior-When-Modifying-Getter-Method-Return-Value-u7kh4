```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) # Modifying the instance variable directly
puts my_object.value #=> 20

# Unexpected behavior: attempting to modify the return value of the getter method
my_object.value = 30
puts my_object.value #=> 20, still 20 instead of 30
```