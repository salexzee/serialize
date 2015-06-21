require 'serialize'

RSpec.describe Serialize do
  describe '#initialize' do
    it 'initializes a Serialize object' do
      expect(serialize = Serialize.new).to eq(serialize)
    end
  end
end