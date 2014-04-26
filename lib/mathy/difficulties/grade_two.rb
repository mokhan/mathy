module Mathy
  module Difficulties
    class GradeTwo
      def next_operands
        [rand(20), rand(20)].sort.reverse
      end

      def choose_operation(console)
        verifier = Verification.new
        console.operation?([
          Operations::Addition.new(verifier),
          Operations::Subtraction.new(verifier)
        ])
      end
    end
  end
end
