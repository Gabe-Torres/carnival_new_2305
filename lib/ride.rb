class Ride

  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement
  def initialize(rider_info)
    @name = rider_info[:name]
    @min_height = rider_info[:min_height]
    @admission_fee = rider_info[:admission_fee]
    @excitement = rider_info[:excitement]
  end
end