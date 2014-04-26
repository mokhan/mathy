#!/usr/bin/env ruby
require 'mathy'

console = Mathy::Console.new
game = Mathy::Game.new(console)
game.play(console.how_many_turns?, console.operation?)
