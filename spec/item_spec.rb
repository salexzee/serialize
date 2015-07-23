require_relative '../lib/serialize/item'

RSpec.describe Item do
  describe '#initialize' do
    # Set serialize variable
    item = Item.new('Macbook Air', '1234567890', 300)

    it 'initializes with name set to passed in value' do
      expect(item.name).to eq('Macbook Air')
    end

    it 'initializes with serial_number set to passed in value' do
      expect(item.serial_number).to eq('1234567890')
    end

    it 'initializes with a price' do
      expect(item.price).to eq(300)
    end
  end
end
