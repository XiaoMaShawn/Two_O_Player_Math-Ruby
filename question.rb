class Question 
  def initialize()
    @number1 = (rand(20) + 1)
    @number2 = (rand(20) + 1)
  end

  def generate_question
    puts ("what is #{@number1} plus #{@number2}?")
  end

  def check_answer(input)
    if (@number1 + @number2) == input.to_i 
        return true
    else 
        return false
    end
  end
end