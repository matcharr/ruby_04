# frozen_string_literal: true

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


john = Player.new("john")
alice = Player.new("alice")

while !((alice.life_points || john.life_points) <= 0) 
    puts "\n-------------\nVoici l'état de chaque joueur : "
    alice.show_state
    john.show_state
    puts "\nPassons à la phase d'attaque : "
    alice.attacks(john)
    break if (john.life_points <= 0)
    john.attacks(alice)
end

binding.pry
