module Mathy
  class Game
    def initialize(player, score = 0)
      @player = player
      @score = score
    end

    def play(console)
      started_at = Time.now
      turns_played = play_turns(console)
      console.display_results(@player, @score, turns_played, started_at)
    end

    private

    def play_turns(console)
      turns_to_play = console.how_many_turns?
      turns_to_play.times do
        @score += 1 if operation(console).play_turn
      end
      turns_to_play
    end

    def operation(console)
      @operation ||= console.difficulty?.choose_operation(console)
    end
  end
end
