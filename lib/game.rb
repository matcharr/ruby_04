# frozen_string_literal: true

class Game
  attr_accessor :human_player, :enemies
  def initialize(name)
    @human_player = HumanPlayer.new(name)
    @enemies = [Player.new('bot_1'), Player.new('bot_2'), Player.new('bot_3'), Player.new('bot_4')]
  end

  def kill_player(object)
    @enemies.delete(object)
  end

  def is_still_ongoing?
    (@human_player.life_points > 0 && !@enemies.none?)
  end

  def show_players
    @human_player.show_state
    puts "#{@enemies.length} left enemies!"
  end

  def menu
    puts "\nSelect Action!\n\n"
    puts 'a - Search Weapon'
    puts "s - Search Health Pack\n"
    puts "f - quit game"
    puts "\nAttacking first enemies in sight!!!\n\n"
    @enemies.each do |i|
      puts "#{@enemies.index(i)} - #{i.name} have #{i.life_points} life points." if i.life_points > 0
    end
  end

  def menu_choice(string)
    if  "asf".include? string
      case string
      when 'a' then @human_player.search_weapon
      when 's' then @human_player.search_health_pack
      when 'f' then exit
      end
    else
      @human_player.attacks(@enemies[string.to_i]) if @enemies[string.to_i - 1]
    end
    @enemies.each { |index| kill_player(index) if index.life_points <= 0 }
  end

  def enemies_attack
    @enemies.each { |index| index.attacks(@human_player) if index.life_points > 0 }
  end

  def end
    puts 'La partie est terminée'
    puts @human_player.life_points > 0 ? 'Well done ! You win !' : 'ARRR ! You loose'
  end
end
