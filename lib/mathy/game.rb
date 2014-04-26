module Mathy
  class Game
    def initialize(player, console, score = 0)
      @player = player
      @score = score
      @console = console
    end

    def play(games_to_play = 2, difficulty)
      operation = difficulty.choose_operation(@console)
      games_to_play.times do
        @score += 1 if operation.play_turn(difficulty.next_operands)
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
