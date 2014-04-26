module Mathy
  class Verification
    def check_answer(question, correct_answer)
      puts ""
      print question
      answer = gets
      if answer.to_i == correct_answer
        print "Correct!"
        return true
      end
      print "The correct answer is #{correct_answer}."
      false
    end
  end
end
