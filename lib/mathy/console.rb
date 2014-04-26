module Mathy
  class Console
    def greet
      clear_screen
      prompt?('what is your name?')
    end

    def how_many_turns?
      prompt?("how many questions do you want?").to_i
    end

    def operation?(verifier = Verification.new)
      case prompt?("choose operation? [+-]")
      when "+"
        Addition.new(verifier)
      when "-"
        Subtraction.new(verifier)
      else
        Addition.new(verifier)
      end
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
