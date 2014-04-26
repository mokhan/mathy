module Mathy
  class Addition
    attr_reader :key

    def initialize(verification)
      @verifier = verification
      @key = "+"
    end

    def play_turn(x: rand(10), y: rand(20), correct_answer: x + y)
      @verifier.check_answer("#{x} + #{y} = ", correct_answer)
    end

    def matches?(other_key)
      key == other_key
    end
  end
end
