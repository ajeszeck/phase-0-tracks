# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!" + " Hooray!!!"
#   end
# end

# Shout.yell_happily("This is so exciting")
# Shout.yell_angrily("Why god why?")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts words + "!" + " Hooray!!!"
  end
end

class Student
  include Shout
end

class Parent
  include Shout
end

student = Student.new
student.yell_happily("This is so exciting!")
student.yell_angrily("You are giving me an F???")

parent = Parent.new
parent.yell_angrily("Clean your room!")
parent.yell_happily("You got an A")