require "minitest/autorun"
require_relative "../user"
require_relative "../resource"
require_relative "../booking"

class BookingTest < Minitest::Test
  def setup
    @user = User.new(id: 1, name: "Mahi", role: "student")
    @resource = Resource.new(id: 1, name: "Microscope", category: "lab")
  end

  def test_booking_an_available_resource
    booking = Booking.new(user: @user, resource: @resource)
    assert_equal "active", booking.status
    refute @resource.available?
  end

  def test_booking_unavailable_resource_raises
    Booking.new(user: @user, resource: @resource)
    assert_raises(BookingError) do
      Booking.new(user: @user, resource: @resource)
    end
  end

  def test_cancelling_booking_changes_status
    booking = Booking.new(user: @user, resource: @resource)
    booking.cancel
    assert_equal "cancelled", booking.status
  end

  def test_cancelling_booking_makes_resource_available
    booking = Booking.new(user: @user, resource: @resource)
    booking.cancel
    assert @resource.available?
  end
end