require './lib/visitor'
require './lib/ride'
require './carnival'

RSpec.describe Carnival do
  describe '#iteration 3' do
    it "exist" do
      carnival = Carnival.new(duration: 14)

      expect(carnival).to be_an_instance_of(Carnival)
    end

    it 'has attributes' do
      carnival = Carnival.new(duration: 14)

      expect(carnival.duration).to eq(14)
      expect(carnival.rides).to be_an_instance_of(Array)
    end
  end
end