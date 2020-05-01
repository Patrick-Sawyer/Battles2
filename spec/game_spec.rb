require 'game'

describe Game do

  let(:player1) {double :player1}
  let(:player2) {double :player2}

  subject = described_class.new

  describe '#attack' do

    it 'sends recieve damage method to other player' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end
end