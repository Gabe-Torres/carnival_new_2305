class Visitor

  attr_reader :name,
              :height,
              :spending_money,
              :preferences
  def initialize(name, height, spending_money)
    @name = name
    @height = height 
    @spending_money = spending_money.gsub("$", "").to_i
    @preferences = []
  end

  def add_preference(visitor_preference)
    @preferences << visitor_preference
  end

  def tall_enough?(height_threshold)
    if @height >= height_threshold
      true 
    else 
      false
    end
  end
end