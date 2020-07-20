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

    def gets_damage(x)
        @life_points -= x
        if @life_points >= 0 ? show_state : (@life_points = 0 ; puts "le joueur #{name} a été tué !")
        end
    end

    def attacks(player)
        damage = compute_damage
        player.gets_damage(damage)
    end
    
    def compute_damage
        return rand(1..6)
    end
end
