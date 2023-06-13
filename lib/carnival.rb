class Carnival

  attr_reader :duration,
              :rides
  def initialize(carnival_info)
    @duration = carnival_info[:duration]
    @rides = []
  end
end