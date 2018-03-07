class Battle < ApplicationRecord
  belongs_to :game

  def get_player_character
    Character.find(self.player_character_id)
  end

  def get_enemy_character
    Character.find(self.enemy_character_id)
  end

  def player_move
    if self.attack == 'punch'
      2 * get_player_character.strength
    elsif self.attack == 'kick'
      get_player_character.strength + get_player_character.speed
    elsif self.attack == 'block'
      10
    end
  end

  def get_enemy_move
    @move = ['punch', 'kick', 'block'].sample
  end

  def enemy_move
    if @move == 'punch'
      2 * get_enemy_character.strength
    elsif @move == 'kick'
      get_enemy_character.strength + get_enemy_character.speed
    elsif @move == 'block'
      10
    end
  end

  def fight
    if player_move < enemy_move
      outcome = get_player_character.health - (enemy_move - player_move)
      get_player_character.update(health: outcome)
    elsif player_move > enemy_move
      outcome = get_enemy_character.health - (player_move - enemy_move)
      get_enemy_character.update(health: outcome)
    elsif
      "its a tie"
    end
    if determine_winner
      game.winner
      game.loser
    end
  end

  def determine_winner

    if get_player_character.health <= 0
      game.winner.update(get_enemy_character.name)
      game.loser.update(get_player_character.name)
    elsif get_enemy_character.health <= 0
      game.winner.update(get_player_character.name)
      game.loser.update(get_enemy_character.name)
    end
  end

end
