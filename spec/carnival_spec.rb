require './lib/visitor'
require './lib/ride'
require './lib/carnival'

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

    it "can add ride objects to ride list" do 
      carnival = Carnival.new(duration: 14)
      ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
      ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

      carnival.add_ride(ride2)
      carnival.add_ride(ride3)

      expect(carnival.rides).to eq([ride2, ride3])
    end

    it "can tell what the most popular ride was" do 
      carnival = Carnival.new(duration: 14)
      visitor1 = Visitor.new('Bruce', 54, '$10')
      visitor2 = Visitor.new('Tucker', 36, '$5')
      visitor3 = Visitor.new('Penny', 64, '$15')

      visitor1.add_preference(:gentle)
      visitor2.add_preference(:gentle)
      visitor2.add_preference(:thrilling)
      visitor3.add_preference(:thrilling)

      ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
      ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
      ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

      carnival.add_ride(ride1)
      carnival.add_ride(ride2)
      carnival.add_ride(ride3)

      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor2)
      ride2.board_rider(visitor2)
      ride2.board_rider(visitor2)
      ride3.board_rider(visitor1)
      ride3.board_rider(visitor2)

      expect(carnival.most_popular_ride).to eq(ride1)
    end
    
    xit 'can tell what the most profitable ride was' do 
      carnival = Carnival.new(duration: 14)
      visitor1 = Visitor.new('Bruce', 54, '$10')
      visitor2 = Visitor.new('Tucker', 36, '$5')
      visitor3 = Visitor.new('Penny', 64, '$15')

      visitor1.add_preference(:gentle)
      visitor2.add_preference(:gentle)
      visitor2.add_preference(:thrilling)
      visitor3.add_preference(:thrilling)

      ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
      ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
      ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

      carnival.add_ride(ride1)
      carnival.add_ride(ride2)
      carnival.add_ride(ride3)

      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride1.board_rider(visitor1)
      ride2.board_rider(visitor2)
      ride2.board_rider(visitor2)
      ride3.board_rider(visitor1)
      ride3.board_rider(visitor2)

      expect(carnival.most_profitable_ride).to eq(ride2)
    end
  end
end