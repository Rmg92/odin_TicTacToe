# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { instance_double(Player) }

  describe '#check_winner' do
    context 'when player choses top row' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([1, 2, 3])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses mid row' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([4, 5, 6])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses bottom row' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([7, 8, 9])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses left column' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([1, 4, 7])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses middle column' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([2, 5, 8])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses right column' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([3, 6, 9])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses left diagonal' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([1, 5, 9])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player choses right diagonal' do
      before do
        game.instance_variable_set(:@players, [player])
        allow(player).to receive(:check_positions).and_return([3, 5, 7])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs winner name' do
        expect(game).to receive(:puts).with('Player wins the game!')
        game.check_winner
      end
    end

    context 'when player has no winning combination at game end' do
      before do
        game.instance_variable_set(:@players, [player])
        game.instance_variable_set(:@round_number, 9)
        game.instance_variable_set(:@winner, false)
        allow(player).to receive(:check_positions).and_return([7, 8, 0])
        allow(player).to receive(:name).and_return('Player')
        allow(game).to receive(:play_again)
      end

      it 'outputs Draw' do
        expect(game).to receive(:puts).with("It's a Draw")
        game.check_winner
      end
    end
  end
end
