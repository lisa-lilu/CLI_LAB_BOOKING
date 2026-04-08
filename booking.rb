require_relative "errors"
require_relative "resource"

class Booking
  attr_reader :user, :resource, :status, :created_at

  def initialize(user:, resource:)
    raise BookingError, "Resource is already booked" unless resource.available?
    @user = user
    @resource = resource
    @status = "active"
    @created_at = Time.now
    resource.assign_booking(self)
  end

  def cancel
    @status = "cancelled"
    resource.clear_booking
  end

  def active?
    @status == "active"
  end
end