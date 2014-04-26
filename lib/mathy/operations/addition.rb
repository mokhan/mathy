module Mathy
  module Operations
    class Addition < Operation
      def initialize(verification)
        super(verification, "+")
      end

      def calculate(operands)
        operands.inject do |result, x|
          result + x
        end
      end
    end
  end
end
