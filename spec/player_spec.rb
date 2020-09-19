RSpec.describe Player do
  before do
    @player = Player.new({name: 'Luka Modric', position: 'midfielder'})
  end

  it 'exists' do
    expect(@player).to be_an_instance_of(Player)
  end

  it 'has readable attributes' do
    expect(@player.name).to eql('Luka Modric')
    expect(@player.position).to eql('midfielder')
  end
end
