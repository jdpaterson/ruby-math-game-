class Player
  attr_reader :name
  attr_reader :lives
  attr_reader :score
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
  def answerWrong
    @lives -= 1
  end
  def answerRight
    @score += 1
  end
end
