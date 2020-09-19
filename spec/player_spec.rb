RSpec.describe Player do
  before do
    @player = Player.new({name: "Luka Modric", position: "midfielder"}) 
  end
  it "exists" do
    expect(@player).to be_an_instance_of(Player)
  end
end
