require 'player'
require 'game'

describe Player do
  subject(:steve) { Player.new("Steve") }
  subject(:mr_nibbles) { Player.new("Mr Nibbles") }
  game = Game.new('steve', 'mr_nibbles')

  describe '#name' do
    it "returns the player's name" do
      expect(steve.name).to eq("Steve")
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(steve.hit_points).to eq(described_class::DEFAULT_HEALTH)
    end
  end

  describe '#attack' do
    it 'damages a Player' do
      expect(mr_nibbles).to receive(:receive_damage)
      game.attack(mr_nibbles)
    end
  end

  describe '#receive_damage' do
    it "receives damage from a player's attack" do
      expect{ mr_nibbles.receive_damage }.to change{ mr_nibbles.hit_points }.by(-10)
    end
  end



end
