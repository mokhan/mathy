module Mathy
  module Operations
    class Addition
      attr_reader :key

      def initialize(verification)
        @verifier = verification
        @key = "+"
      end

      def play_turn(operands)
        @verifier.check_answer("#{operands.join(" + ")} = ", calculate(operands))
      end

      def matches?(other_key)
        key == other_key
      end

      private

      def calculate(operands)
        operands.inject(0) do |result, x|
          result + x
        end
      end
    end
  end
end
