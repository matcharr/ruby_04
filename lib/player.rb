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
        if (@life_points -= damage_recieve) >= 0 ? show_state : (@life_points = 0 ; puts "le joueur #{name} a été tué !")
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

class HumanPlayer < Player
    atrr_accessor :weapon_level
    def initialize(name)
        @weapon_level = 1
        @life_points = 100
    end
    def show_state
        puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
    end
    def compute_damage
        rand(1..6) * @weapon_level
    end
    def search_weapon
        level = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{level}"
        puts level > @weapon_level ? "Youhou !  #{@weapon_level = level} elle est meilleure que ton arme actuelle : tu la prends." : "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
    def search_health_pack
        pack = rand(1..6)
        puts "Tu n'as rien trouvé..." if pack == 1
        if pack > 1 && pack < 6
			puts "Bravo, tu as trouvé un pack de +50 points de vie !"
			@life_points + 50 > 100 ? @life_points = 100 : @life_points += 50
		elsif pack == 6
			puts "Waow, tu as trouvé un pack de +80 points de vie !"
			@life_points + 80 > 100 ? @life_points = 100 : @life_points += 80
		end
    end
end