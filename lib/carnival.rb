class Carnival

  attr_reader :duration,
              :rides
  def initialize(carnival_info)
    @duration = carnival_info[:duration]
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_popular_ride 
    rides.max_by do |ride|
      ride.total_revenue.size
    end
  end

  def most_profitable_ride
    rides.max_by do |ride|
      ride.total_revenue
    end
  end

  def carnival_total_revenue
    total_revenue = 0
    rides.sum do |ride|
      total_revenue += ride.total_revenue
    end
    total_revenue
  end
end