# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

# class Unicorn
#   def initialize(name)
#     @name = name
#     @color = "silver"
#   end
#
#   def say(words)
#     p "*~* #{words} *~*"
#   end
# end
#
#
# Unicorn1 = Unicorn.new("Jimothy")
#
# Unicorn1.say("Hello")
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
# class Vampire
#   def initialize(name, pet = "bat")
#     @name = name
#     @pet = pet
#     @thirsty = true
#   end
#   def drink
#     @thirsty = false
#   end
# end
#
# Vampire1 = Vampire.new("Tom", "Iguana")
# p Vampire1
# Vampire1.drink
# p Vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
# class Dragon
#   def initialize(name, rider, color, is_hungry = true, hunger = 0)
#     @name = name
#     @color = color
#     @rider = rider
#     @is_hungry = is_hungry
#     @hunger = hunger
#   end
#   def eat
#     if @hunger == 3
#       @is_hungry = false
#       @hunger = 0
#     else
#       @hunger = @hunger + 1
#     end
#   end
# end
#
# Dragon1 = Dragon.new("Hank","Frank","Red")
# p Dragon1
#
# Dragon1.eat
# Dragon1.eat
#
# p Dragon1
#
# Dragon1.eat
# Dragon1.eat
#
# p Dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition, age = 0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = false
    if @age >= 33 && @age < 100
      @is_adult = true
    elsif @age > 100
      @is_old = true
    else
    end
    if @name.include?("Frodo")
      @has_ring = true
    end
  end
  def celebrate_birthday
    @age = @age + 1
  end
end

Hobbit1 = Hobbit.new("Frodo", "sunny", 44)
p Hobbit1
