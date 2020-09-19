class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    @teams.flat_map do |team|
      team.players_by_position(position) unless team.eliminated?
    end.compact
  end

  def all_positions
    @teams.flat_map { |team| team.all_positions }.uniq
  end

  def all_players_by_position
    all_positions.reduce({}) do |players_by_position, position|
      players_by_position[position] = active_players_by_position(position)
      players_by_position
    end
  end
end
