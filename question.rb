class Question  

  def initialize
    @answer
  end

  def ask_question
    a = rand(1..20)
    b = rand(1..20)
    puts "What does #{a} plus #{b} equal?"  
    @answer = a+b
  end

end

# ask = Question.new
# puts ask.ask_question