describe '#Game' do
  # Making doubles of the Player class, called player_1 and player_2
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  game = Game.new(:player_1, :player_2)

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'Starts on Player 1' do
      expect(game.current_turn).to eq(:player_1)
    end
  end
end
