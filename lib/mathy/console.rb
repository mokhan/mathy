module Mathy
  class Console
    def greet
      clear_screen
      prompt?('what is your name?')
    end

    def how_many_turns?
      prompt?("how many questions do you want?").to_i
    end

    def operation?(operations)
      selection =  prompt?("choose operation? #{operations.map(&:key).flatten}")
      operations.find { |operation| operation.matches?(selection) }
    end

    def difficulty?
      Difficulties::GradeTwo.new
    end

    def prompt?(question)
      puts question
      gets.strip
    end

    private

    def clear_screen
      puts "\e[H\e[2J"
    end
  end
end
