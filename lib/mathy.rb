require "mathy/version"

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

  class Verification
    def check_answer(question, correct_answer)
      puts ""
      print question
      answer = gets
      if answer.to_i == correct_answer
        print "Correct!"
        return true
      end
      print "The correct answer is #{correct_answer}."
      false
    end

  end

  class Addition
    def initialize(verification)
      @verifier = verification
    end

    def play_turn(x: rand(10), y: rand(20), correct_answer: x + y)
      @verifier.check_answer("#{x} + #{y} = ", correct_answer)
    end
  end

  class Subtraction
    def initialize(verification)
      @verifier = verification
    end

    def play_turn(x: rand(10), y: rand(20), correct_answer: x - y)
      @verifier.check_answer("#{x} - #{y} = ", correct_answer)
    end
  end

  class Game
    def initialize(console, score = 0)
      @name = console.greet
      @score = score
    end

    def play(games_to_play = 2, operation)
      games_to_play.times do
        @score += 1 if operation.play_turn(x: rand(10), y: rand(20))
      end

      display_results(@name, @score, games_to_play)
    end

    private

    def display_results(name, score, games_to_play)
      puts ""
      puts "+++++++++++++++++++++++++++++++++++"
      puts "You got #{score}/#{games_to_play}."
      puts "Good bye #{name}"
      puts "+++++++++++++++++++++++++++++++++++"
    end
  end

  console = Console.new
  game = Game.new(console)
  game.play(console.how_many_turns?, console.operation?)
end
