#!/usr/bin/env ruby
require 'mathy'

verifier = Mathy::Verification.new
operations = [
  Mathy::Addition.new(verifier),
  Mathy::Subtraction.new(verifier)
]

console = Mathy::Console.new
game = Mathy::Game.new(console)
game.play(console.how_many_turns?, console.operation?(operations))
