require 'spec_helper'

describe 'Sortings' do
  describe 'Selection sorting' do
    let(:array) {
      50.times.map { rand 100 }
    }
    let(:expected) { array.sort }

    it 'sorts like native method' do
      expect(array.selection_sort).to eq expected
    end
  end
end
