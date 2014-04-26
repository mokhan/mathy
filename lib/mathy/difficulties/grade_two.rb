module Mathy
  module Difficulties
    class GradeTwo
      def next_operands
        [rand(20), rand(20)].sort.reverse
      end

      def choose_operation(console)
        verifier = Verification.new(console)
        console.operation?([
          Operations::Operation.new(self, "+", verifier),
          Operations::Operation.new(self, "-", verifier)
        ])
      end
    end
  end
end
