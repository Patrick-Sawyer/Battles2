require 'game'

describe Game do

    subject(:game) { described_class.new(player1, player2) }
    let(:player1) {double :player1}
    let(:player2) {double :player2}


  describe "#player1" do
    it "returns player1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "returns player2" do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do

    it 'sends recieve damage method to other player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end


end
