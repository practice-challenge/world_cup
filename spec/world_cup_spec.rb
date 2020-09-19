RSpec.describe WorldCup do
  before do
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)

    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)

    @world_cup = WorldCup.new(2018, [@france, @croatia])
  end

  it "exists" do
    expect(@world_cup).to be_an_instance_of(WorldCup)
  end

  it "has readable attributes" do
    expect(@world_cup.year).to eql(2018)
    expect(@world_cup.teams).to eql([@france, @croatia])
  end

  it "can find all active players by position" do
    expect(@world_cup.active_players_by_position("midfielder")).to contain_exactly(@pogba, @modric)

    @croatia.eliminated = true

    expect(@world_cup.active_players_by_position("midfielder")).to contain_exactly(@pogba)
  end

  it "can find all positions played in the world cup" do
    expect(@world_cup.all_positions).to contain_exactly('forward', 'defender', 'midfielder')
  end

  it "can return a hash grouping all players by positions" do
    expect(@world_cup.all_players_by_position).to eql(
      {
        "forward" => [@mbappe],
        "midfielder" => [@pogba, @modric],
        "defender" => [@vida]
      }
    )
  end
end
