# Top level comment
class Animal

  attr_reader :name, :age

  def talk
    puts "#{@name} says Bark!!"
  end

  def move(destination)
    puts "#{name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  # We just define attr_reader up there and we write attr_writer ourselves
  # Investigate if this code can be collapsed or make better readability.
  # Getter and setters
  def name=(name)
    raise 'Invalid name for a Dog.' if name == ''
    @name = name
  end

  def age=(age)
    raise 'Invalid age, we need something bigger than 0' if age < 0
    @age = age
  end

end

# Top level comment
class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!!"
    super
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
end

class Cat < Animal
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.talk
dog.talk
cat.talk
