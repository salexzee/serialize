require 'serialize'

RSpec.describe Serialize do
  describe '#initialize' do
    # Set serialize variable
    serialize = Serialize.new

    it 'initializes with items array' do
      expect(serialize.items).to eq([])
    end
  end
end