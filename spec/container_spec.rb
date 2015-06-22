require 'container'

RSpec.describe Container do
  describe '#initialize' do
    # Set serialize variable
    container = Container.new

    it 'initializes with items array' do
      expect(container.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'adds an item to the @items array' do
      container = Container.new
      container.add_item('Macbook Air', '1234567890')
      expect(container.items[0].to_s).to eq("Macbook Air: 1234567890")
    end
  end
end