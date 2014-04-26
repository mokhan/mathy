module Mathy
  module Operations
    class Subtraction
      attr_reader :key

      def initialize(verification)
        @verifier = verification
        @key = "-"
      end

      def play_turn(x: rand(10), y: rand(20))
        @verifier.check_answer("#{x} - #{y} = ", x - y)
      end

      def matches?(other_key)
        key == other_key
      end
    end
  end
end
