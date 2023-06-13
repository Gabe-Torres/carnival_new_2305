class Ride

  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :rider_log, 
              :total_revenue
  def initialize(ride_info)
    @name = ride_info[:name]
    @min_height = ride_info[:min_height]
    @admission_fee = ride_info[:admission_fee]
    @excitement = ride_info[:excitement]
    @rider_log = {}
    @total_revenue = 0
  end

  def board_rider(visitor_object)
    if visitor_object.height >= min_height && visitor_object.preferences.include?(@excitement)
      if @rider_log[visitor_object].nil? 
        @rider_log[visitor_object] = 1
      else
      @rider_log[visitor_object] += 1
      end
      visitor_object.spending_money -= admission_fee
      @total_revenue += admission_fee
    end
  end
end