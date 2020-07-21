# frozen_string_literal: true

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def menu
  puts "Select Action!\n"
  puts 'a - Search Weapon'
  puts "s - Search Health Pack\n"
  puts 'Attacking first enemi in sight!!!'
  puts '0 - Alice have 10 life points'
  puts '1 - John have 10 life points'
  puts 'quit - quit game'
end

puts " -----------------------------------------------\n|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |\n|Le but du jeu est d'être le dernier survivant !|\n -----------------------------------------------\n"
puts "\nInitialize player :"
print ' > Enter player name : '
human = HumanPlayer.new(gets.chomp)
human.show_state
puts "\nInitialize enemies:"
enemies = [john = Player.new('John'), alice = Player.new('Alice')]
john.show_state
alice.show_state

puts "\n----------Let's begin the fight!-----------"
while human.life_points > 0 && (john.life_points > 0 || alice.life_points > 0)
  puts "\n----------Menu--------------------------"
  menu
  puts "\n----------Your Turn----------------------"
  print '> '
  case gets.chomp
  when 'a' then human.search_weapon
  when 's' then human.search_health_pack
  when '0' then human.attacks(john)
  when '1' then human.attacks(alice)
  when 'quit' then break
  end
 # sleep 2
  puts "\n----------Enemies Turn--------------"
  enemies.each { |index| index.attacks(human) if index.life_points > 0 }
 # sleep 2
  puts "\n----------Players Stats--------------"
  human.show_state
  john.show_state
  alice.show_state
 #sleep 2
end
puts "\nEnd of the Game!!!"
puts human.life_points > 0 ? 'Well Done! You WIN this time.' : 'You LOOSE, better luck next time!'
binding.pry
