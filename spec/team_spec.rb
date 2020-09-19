RSpec.describe Team do
  before do
    @team = Team.new('France')
  end

  it "exists" do
    expect(@team).to be_an_instance_of(Team)
  end
end
