class Question
  attr_reader :num1
  attr_reader :num2
  def initialize()
    @num1 = rand(20)
    @num2 = rand(20)    
  end

  def verifyAnswer(ans)
    puts "Answer given is #{ans}"
    if ans.to_i == @num1 + @num2
      puts "That's right!"
      return true
    else
      puts "Nope!"
      return false
    end
  end

end
