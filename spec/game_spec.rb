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
      expect { game.attack }.to change { game.number_of_goes }.by 1
      expect(player1).to receive(:receive_damage)
      game.attack
    end
  end

  describe 'whos go is it' do 
    it "starts with variable number_of_goes equal to 0" do 
      expect(game.number_of_goes).to eq 0
    end
  end

  describe 'who' do
    it 'starts with player 1' do
      expect(game.who).to eq player1
    end
    it 'changes player when attack pressed' do
      expect(player2).to receive(:receive_damage)
      game.attack
      expect(game.who).to eq player2
      expect(player1).to receive(:receive_damage)
      game.attack
      expect(game.who).to eq player1
    end
  end
end
