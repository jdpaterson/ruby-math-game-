class Game
  attr_reader :player1
  attr_reader :player2
  attr_reader :round
  attr_reader :to_answer

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @num_questions = 0
    @to_answer = @player1
  end

  def startGame
    askQuestion
  end

  def askQuestion
    @num_questions += 1
    q = Question.new
    puts "#{@to_answer.name}, what is #{q.num1} + #{q.num2}?"
    myAns = gets.chomp
    if q.verifyAnswer(myAns) == true
      @to_answer.answerRight
    else
      @to_answer.answerWrong
    end
    if @to_answer.lives == 0
      @winner = @to_answer
      gameSummary
    else
      switchPlayer
      roundSummary
      askQuestion
    end
  end

  def switchPlayer
    if @to_answer == @player1
      @to_answer = @player2
    else
      @to_answer = @player1
    end
  end

  def roundSummary
    puts "After #{@num_questions} questions, "
    puts "#{@player1.name} has #{@player1.score} points, and #{@player2.name} has #{@player2.score}."
    puts "#{@player1.name} has #{@player1.lives} wrong answers left, and #{@player2.name} has #{@player2.lives}."
    puts "It is #{@to_answer.name} up next."
  end

  def gameSummary
    puts "It's over! #{@winner.name} has won!"
    puts "After #{@num_questions} questions, "
    puts "The final tally is #{@player1.name} with #{@player1.score} points,
    and #{@player2.name} with #{@player2.score}."
  end
end
