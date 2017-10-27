require_relative './Docking_station.rb'
class Bike
attr_accessor :report_broken

  def initialize (report_broken=false)
    @report_broken=report_broken
  end

  def working?
    !@report_broken 
  end

end
