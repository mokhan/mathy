module Mathy
  class Game
    def initialize(player, score = 0)
      @player = player
      @score = score
    end

    def play(console)
      games_to_play = console.how_many_turns?
      difficulty = console.difficulty?
      operation = difficulty.choose_operation(console)
      games_to_play.times do
        @score += 1 if operation.play_turn
      end

      display_results(@score, games_to_play)
    end

    private

    def display_results(score, games_to_play)
      puts ""
      puts "+++++++++++++++++++++++++++++++++++"
      puts "You got #{score}/#{games_to_play}."
      puts "Good bye #{@player.name}"
      puts "+++++++++++++++++++++++++++++++++++"
    end
  end
end
