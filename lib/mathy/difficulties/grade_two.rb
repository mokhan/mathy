module Mathy
  module Difficulties
    class GradeTwo
      def next_operands
        [rand(20), rand(20)].sort.reverse
      end

      def choose_operation(console)
        console.operation?([
          Operations::Addition.new(self),
          Operations::Subtraction.new(self)
        ])
      end
    end
  end
end
