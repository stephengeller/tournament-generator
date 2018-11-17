class GroupSorter

  attr_reader :players_per_game

  def initialize(players_per_game)
    @players_per_game = players_per_game
  end

  def create_groups(players)
    validate_sizes(players)
    groups = []
    alphabet = ("A".."Z").to_a
    max_group_size = @players_per_game/2
    counter = 0
    players.each_with_index do |player, index|
      current_group = alphabet[counter]
      if index % max_group_size == 0
        groups.push({
          "group_name": current_group,
          "members": []
        })
        counter += 1
      end
      groups[counter - 1][:members].push(player)
    end
    groups
  end

  private

  def validate_sizes(players)
    if players.length <= @players_per_game
      raise 'No grouping necessary, players do not exceed game size'
    end
  end
end