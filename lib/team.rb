class Team
  attr_reader :country, :players, :eliminated
  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end
end
