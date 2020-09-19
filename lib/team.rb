class Team
  attr_reader :country, :players
  attr_accessor :eliminated
  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end
end
