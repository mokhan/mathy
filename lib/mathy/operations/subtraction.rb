module Mathy
  module Operations
    class Subtraction < Operation
      def initialize(difficulty)
        super(difficulty, "-")
      end
    end
  end
end
