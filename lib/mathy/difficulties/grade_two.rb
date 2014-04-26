module Mathy
  module Difficulties
    class GradeTwo
      def next_operands
        [rand(20), rand(20)].sort.reverse
      end
    end
  end
end
