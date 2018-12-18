class Animal
  attr_reader :name, :age

  def name=(name)
    if (name == "")
      raise "Invalid name for a Dog."
    else
      @name = name
    end
  end

  def age=(age)
    if (age<0)
      raise "Invalid age, we need something bigger than 0"
    else
      @age = age
    end
  end

  def talk
    puts "#{@name} says Bark!!"
  end

  def move(destination)
    puts "#{name} running to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
end

class Bird < Animal
  def talk
    puts "Chirp Chirp!!"
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Cat < Animal
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.talk
dog.talk
cat.talk
