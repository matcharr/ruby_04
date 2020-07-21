# frozen_string_literal: true

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts " -----------------------------------------------\n|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |\n|Le but du jeu est d'être le dernier survivant !|\n -----------------------------------------------\n"

my_game = Game.new("Wolverine")
my_game.show_players
#my_game.kill_player()
my_game.menu
my_game.menu_choice(gets.chomp)
binding.pry