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
end
