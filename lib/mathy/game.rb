module Mathy
  class Game
    def initialize(player, score = 0)
      @player = player
      @score = score
    end

    def play(console)
      games_to_play = console.how_many_turns?
      games_to_play.times do
        @score += 1 if operation(console).play_turn
      end
      console.display_results(@player, @score, games_to_play)
    end

    private

    def operation(console)
      @operation ||= console.difficulty?.choose_operation(console)
    end
  end
end
