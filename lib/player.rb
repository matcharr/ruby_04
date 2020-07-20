# frozen_string_literal: true

class Player
    attr_accessor :name, :life_points
    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{@name} have #{@life_points} life points"
    end

    def gets_damage(damage_recieve)
        @life_points -= damage_recieve
        if @life_points >= 0 ? show_state : (@life_points = 0 ; puts "le joueur #{name} a été tué !")
        end
    end

    def attacks(player)
        damage_deal = compute_damage
        player.gets_damage(damage_deal)
    end
    
    def compute_damage
        return rand(1..6)
    end
end
