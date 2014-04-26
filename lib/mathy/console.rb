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

    def display_results(player, score, games_to_play)
      report ""
      report "+++++++++++++++++++++++++++++++++++"
      report "You got #{score}/#{games_to_play}."
      report "Good bye #{player.name}"
      report "+++++++++++++++++++++++++++++++++++"
    end

    def prompt?(question)
      report question
      gets.strip
    end

    def report(message)
      puts message
    end

    private

    def clear_screen
      report "\e[H\e[2J"
    end
  end
end
