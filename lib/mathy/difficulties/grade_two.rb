module Mathy
  module Difficulties
    class GradeTwo
      def next_operands
        [rand(20), rand(20)].sort.reverse
      end

      def choose_operation(console)
        verifier = Verification.new
        console.operation?([
          Operations::Addition.new(verifier, self),
          Operations::Subtraction.new(verifier, self)
        ])
      end
    end
  end
end
