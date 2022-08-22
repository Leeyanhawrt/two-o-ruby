class Question 

  def get_question 
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    puts "What is #{num1} + #{num2}?"
    answer = gets.chomp
    if answer.to_i == num1 + num2
      puts true
    else 
      puts false
    end
  end
end

question = Question.new()
puts question.get_question
