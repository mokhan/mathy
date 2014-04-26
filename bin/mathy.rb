#!/usr/bin/env ruby
require 'mathy'

verifier = Mathy::Verification.new
operations = [
  Mathy::Operations::Addition.new(verifier),
  Mathy::Operations::Subtraction.new(verifier)
]

console = Mathy::Console.new
game = Mathy::Game.new(console)
difficulty = Mathy::Difficulties::GradeTwo.new
game.play(console.how_many_turns?, console.operation?(operations), difficulty)
