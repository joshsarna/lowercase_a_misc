class Person
  attr_accessor :age

  def initialize(opts)
    @age = opts[:age]
  end

  def grow_old
    age += 10
  end
end

sandra = Person.new(age: 45)
sandra.grow_old

p sandra  # => undefined method `+' for nil:NilClass (NoMethodError)