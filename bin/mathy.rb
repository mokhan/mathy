#!/usr/bin/env ruby
require 'mathy'

module Mathy
  verifier = Mathy::Verification.new
  operations = [
    Mathy::Operations::Addition.new(verifier),
    Mathy::Operations::Subtraction.new(verifier)
  ]

  console = Mathy::Console.new

  player = Player.new(console.greet)
  game = Mathy::Game.new(player)
  difficulty = Mathy::Difficulties::GradeTwo.new
  game.play(console.how_many_turns?, console.operation?(operations), difficulty)
end
