module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!" + " Hooray!!!"
  end
end

Shout.yell_happily("This is so exciting")
Shout.yell_angrily("Why god why?")