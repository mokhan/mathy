module Mathy
  class Verification
    def initialize(console)
      @console = console
    end

    def check_answer(question, correct_answer)
      @console.report ""
      @console.report question
      answer = gets
      if answer.to_i == correct_answer
        @console.report "Correct!"
        return true
      end
      @console.report "The correct answer is #{correct_answer}."
      false
    end
  end
end
