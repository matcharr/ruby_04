# frozen_string_literal: true

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts " -----------------------------------------------\n|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |\n|Le but du jeu est d'être le dernier survivant !|\n -----------------------------------------------\n"
puts "\n----------Initialize player----------\n\n"
print ' > Enter player name : '
my_game = Game.new(gets.chomp)
my_game.show_players
puts "\n------------Let's begin the fight!-----------"
while my_game.is_still_ongoing?
  puts "\n----------Menu-----------------------"
  my_game.menu
  puts "\n----------Your Turn------------------"
  print '> '
  my_game.menu_choice(gets.chomp)
  puts "\n----------Enemies Turn---------------"
  my_game.enemies_attack
  puts "\n----------Players Stats--------------"
  my_game.show_players
end
my_game.end
binding.pry
