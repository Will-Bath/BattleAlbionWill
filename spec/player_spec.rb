require 'player'

describe Player do
  it "returns the player's name" do
    test_player = Player.new("Steve")
    expect(test_player.name).to eq("Steve")
  end
end
