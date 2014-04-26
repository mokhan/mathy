module Mathy
  module Operations
    class Addition < Operation
      def initialize(difficulty)
        super(difficulty, "+")
      end
    end
  end
end
