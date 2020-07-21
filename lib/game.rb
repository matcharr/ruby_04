# frozen_string_literal: true

class Game
  attr_accessor :human_player, :enemies
  def initialize(name)
    @human_player = HumanPlayer.new(name)
    @enemies = [bot_1 = Player.new('bot_1'), bot_2 = Player.new('bot_2'), bot_3 = Player.new('bot_3'), bot_4 = Player.new('bot_4')]
  end

  def kill_player(object)
    @enemies[object].delete
  end

  def is_still_ongoing?
    if @human_player.life_points > 0 && Player == 1
      true
    else
      false
    end
  end

  def show_players
    @human_player.show_state
    [0, 1, 2, 3].each { |n| @enemies[n].show_state }
  end

  def menu
    puts "\nSelect Action!\n\n"
    puts 'a - Search Weapon'
    puts "s - Search Health Pack\n"
    puts "\nAttacking first enemies in sight!!!\n\n"
    puts "1 - Attack bot_1 have #{@life_points} life points" unless @enemies[0].nil?
    puts "2 - Attack bot_2 have #{@life_points} life points" unless @enemies[1].nil?
    puts "3 - Attack bot_3 have #{@life_points} life points" unless @enemies[2].nil?
    puts "4 - Attack bot_4 have #{@life_points} life points" unless @enemies[3].nil?
    puts 'quit - quit game'
  end

  def menu_choice(string)
    case gets.chomp
    when 'a' then @human_player.search_weapon
    when 's' then @human_player.search_health_pack
    when '1' then @human_player.attacks(bot_1) unless @enemies[0].nil?
    when '2' then @human_player.attacks(bot_2) unless @enemies[1].nil?
    when '3' then @human_player.attacks(bot_3) unless @enemies[2].nil?
    when '4' then @human_player.attacks(bot_4) unless @enemies[3].nil?
    end
  end
  def   enemies_attack
    enemies.each { |index| index.attacks(human) if index.life_points > 0 }
  end
end
