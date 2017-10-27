require_relative './bike.rb'
class DockingStation
  attr_accessor :bikes, :limit_capacity

  DEFAULT_CAPACITY = 20

  def initialize(limit_capacity = DEFAULT_CAPACITY)
    @limit_capacity=limit_capacity
    @available = []
  end

  def release_bike
    raise "There are no bikes docked" unless empty?
    @available.pop
  end

  def dock(bike)
      raise "Dock is full" if full?
      @available << bike
      @bikes=bike
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
