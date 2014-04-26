module Mathy
  module Operations
    class Addition < Operation
      def initialize(verification, difficulty)
        super(verification, difficulty, "+")
      end

      def calculate(operands)
        operands.inject do |result, x|
          result + x
        end
      end
    end
  end
end
