module Mathy
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
end
