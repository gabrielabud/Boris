require_relative './bike.rb'
class DockingStation
  attr_accessor :bikes, :limit_capacity

  DEFAULT_CAPACITY = 20

  def initialize(limit_capacity = DEFAULT_CAPACITY)
    @limit_capacity=limit_capacity
    @available = []
  end

  def releasing
    @available.each do |bike|
      if bike.working?
        bici = bike
        @available.delete(bike)
        return bici
      end
    end
    nil
  end

  def release_bike
    bike = releasing
    return bike unless bike.nil?
    raise "There are no bikes docked"
  end

  def dock(bike)
      raise "Dock is full" if full?
      @available << bike
      @bikes=bike
    end


  def report_broken
    true
  end


  def capacity
    @available.length
  end

  private


  def full?
    @limit_capacity <= capacity
  end

  def empty?
    capacity > 0 ? true:false
  end



end
