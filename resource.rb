class Resource
  attr_reader :id, :name, :category

  def initialize(id:, name:, category:)
    @id = id
    @name = name
    @category = category
    @active_booking = nil
  end

  def available?
    @active_booking.nil?
  end

  def assign_booking(booking)
    @active_booking = booking
  end

  def clear_booking
    @active_booking = nil
  end
end