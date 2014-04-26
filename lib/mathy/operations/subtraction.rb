module Mathy
  module Operations
    class Subtraction
      attr_reader :key

      def initialize(verification)
        @verifier = verification
        @key = "-"
      end

      def play_turn(difficulty)
        operands = difficulty.next_operands
        @verifier.check_answer("#{operands.join(" - ")} = ", operands.inject() { |result, x| result - x })
      end

      def matches?(other_key)
        key == other_key
      end
    end
  end
end
