class Person
  attr_accessor :age

  def initialize(opts)
    @age = opts[:age]
  end

  def grow_old
    age = @age + 10
  end
end

sandra = Person.new(age: 45)
sandra.grow_old

p sandra  # => #<Person:0x00007fd5ea13c2d0 @age=45>