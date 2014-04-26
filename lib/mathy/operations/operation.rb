module Mathy
  module Operations
    class Operation
      attr_reader :key

      def initialize(verification, key)
        @verifier = verification
        @key = key
      end

      def play_turn(operands)
        @verifier.check_answer("#{operands.join(" #{key} ")} = ", calculate(operands))
      end

      def matches?(other_key)
        key == other_key
      end
    end
  end
end
