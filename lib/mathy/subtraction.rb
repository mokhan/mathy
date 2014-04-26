module Mathy
  class Subtraction
    def initialize(verification)
      @verifier = verification
    end

    def play_turn(x: rand(10), y: rand(20), correct_answer: x - y)
      @verifier.check_answer("#{x} - #{y} = ", correct_answer)
    end
  end
end
