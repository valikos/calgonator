require 'spec_helper'

describe 'Sortings' do
  let(:array) {
    50.times.map { rand 100 }
  }
  let(:expected) { array.sort }

  describe 'Selection sorting' do
    it 'sorts like native method' do
      expect(array.selection_sort).to eq expected
    end
  end

  describe 'Insertion sorting' do
    it 'sorts like native method' do
      expect(array.insertion_sort).to eq expected
    end
  end

  describe 'Merge sorting' do
    it 'sorts like native method' do
      expect(array.merge_sort).to eq expected
    end
  end
end
