class Question 
  attr_accessor :answer, :num1, :num2

def initialize
  @answer = 0
  @num1 = 0
  @num2 = 0
end

  def query_question 
    self.num1 = rand(20) + 1
    self.num2 = rand(20) + 1
    puts "What is #{num1} + #{num2}?"
    puts "> "
    self.answer = $stdin.gets.chomp
  end

  def result 
   answer.to_i == num1 + num2
  end
  
end