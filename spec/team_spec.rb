RSpec.describe Team do
  before do
    @team = Team.new('France')
  end

  it "exists" do
    expect(@team).to be_an_instance_of(Team)
  end

  it "has readable attributes" do
    expect(@team.country).to eql('France')
    expect(@team.players).to eql([])
    expect(@team.eliminated).to eql(false)
  end

  it "can set eliminated atteribute" do
    expect(@team.eliminated).to eql(false)

    @team.eliminated = true

    expect(@team.eliminated).to eql(true)
  end
end
