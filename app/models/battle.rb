class Battle < ApplicationRecord
  belongs_to :game

  def get_player_character
    Character.find(self.player_character_id)
  end

  def get_enemy_character
    Character.find(self.enemy_character_id)
  end

  def get_user
    User.find(self.game.user_id)
  end

  def get_enemy_move
    @enemy_move = ['punch', 'kick', 'block'].sample
  end

  def random_num
    25 + rand(50)
  end

  def move
    if self.attack == 'punch' && @enemy_move == 'kick'
      get_player_character.strength + random_num
    elsif self.attack == 'kick' && @enemy_move == 'punch'
      -get_enemy_character.strength - random_num
    elsif self.attack == 'block' && @enemy_move == 'kick'
      -get_enemy_character.speed - random_num
    elsif self.attack == 'block' && @enemy_move == 'punch'
      get_player_character.weight / 5 + random_num
    elsif self.attack == 'kick' && @enemy_move == 'block'
      get_player_character.strength + random_num
    elsif self.attack == 'punch' && @enemy_move == 'block'
      get_enemy_character.weight / -5 - random_num
    end
  end

  def fight
    if move.to_i < 0
      outcome = get_player_character.health + move
      get_player_character.update(health: outcome)
    elsif move.to_i > 0
      outcome = get_enemy_character.health - move
      get_enemy_character.update(health: outcome)
    else
      "its a tie"
    end
  end

  # def player_move
  #   if self.attack == 'punch'
  #     2 * get_player_character.strength
  #   elsif self.attack == 'kick'
  #     get_player_character.strength + get_player_character.speed
  #   elsif self.attack == 'block'
  #     10
  #   end
  # end

  # def enemy_move
  #   if @move == 'punch'
  #     2 * get_enemy_character.strength
  #   elsif @move == 'kick'
  #     get_enemy_character.strength + get_enemy_character.speed
  #   elsif @move == 'block'
  #     10
  #   end
  # end

  # def fight
  #   if player_move < enemy_move
  #     outcome = get_player_character.health - (enemy_move - player_move)
  #     get_player_character.update(health: outcome)
  #   elsif player_move > enemy_move
  #     outcome = get_enemy_character.health - (player_move - enemy_move)
  #     get_enemy_character.update(health: outcome)
  #   elsif
  #     "its a tie"
  #   end
  # end

  def user_victory
    outcome = get_user.wins.to_i + 1
    game.user.update_attribute(:wins, outcome)
  end

  def user_defeat
    outcome = get_user.losses.to_i + 1
    game.user.update_attribute(:losses, outcome)
  end

  def determine_winner
    if get_player_character.health <= 0
      user_defeat
      game.update(winner: get_enemy_character.name)
      game.update(loser: get_player_character.name)
    elsif get_enemy_character.health <= 0
      user_victory
      game.update(winner: get_player_character.name)
      game.update(loser: get_enemy_character.name)
    end
  end

end
