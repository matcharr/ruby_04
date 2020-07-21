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
    if (@life_points -= damage_recieve) >= 0 ? show_state : (@life_points = 0; puts "Player #{name} Killed !")
    end
  end

  def attacks(player)
    damage_deal = compute_damage
    player.gets_damage(damage_deal)
  end

  def compute_damage
    rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level
  def initialize(name)
    @weapon_level = 1
    super(name)
    @life_points = 100
  end

  def show_state
    print " #{@name} have #{@life_points} life points and a weapon level #{@weapon_level}\n"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    level = rand(1..6)
    puts "U have found a weapon level #{level}"
    puts level > @weapon_level ? "Youhou !  It's a Great weapon level #{@weapon_level = level}, you take it!" : "M@*" + "#"+ "{" + "$.}" + ".. Worst than current weapon drop it!"
  end

  def search_health_pack
    pack = rand(1..6)
    puts "Nothing found..." if pack == 1
    if pack > 1 && pack < 6
      puts 'Nice, health pack +50 life points!'
      @life_points + 50 > 100 ? @life_points = 100 : @life_points += 50
    elsif pack == 6
      puts 'INCREDIBLE, HEALTH PACK +80 LIFE POINTS!'
      @life_points + 80 > 100 ? @life_points = 100 : @life_points += 80
    end
  end
end
