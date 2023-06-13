require './lib/visitor'

RSpec.describe Visitor do
  describe '#iteration 1' do
    it 'exist' do 
    visitor1 = Visitor.new('Bruce', 54, '$10')

    expect(visitor1).to be_an_instance_of(Visitor)
    end

    it 'has attributes' do
      visitor1 = Visitor.new('Bruce', 54, '$10')

      expect(visitor1.name).to eq("Bruce")
      expect(visitor1.height).to eq(54)
      expect(visitor1.spending_money).to eq(10)
      expect(visitor1.preferences).to be_an_instance_of(Array)
    end

    it 'can add preferences' do 
      visitor1 = Visitor.new('Bruce', 54, '$10')
      visitor1.add_preference(:gentle)
      visitor1.add_preference(:thrilling)

      expect(visitor1.preferences).to eq([:gentle, :thrilling])
    end
  end
end
