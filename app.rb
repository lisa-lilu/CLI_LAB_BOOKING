require_relative "errors"
require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "roles"

user1 = User.new(id: 1, name: "Hana", role: Roles::STUDENT)
user2 = User.new(id: 2, name: "Ash", role: Roles::ASSISTANT)

resource1 = Resource.new(id: 1, name: "Projector", category: "equipment")
resource2 = Resource.new(id: 2, name: "Microscope", category: "lab")


puts "Booking resource for User 1..."
booking1 = Booking.new(user: user1, resource: resource1)
puts "Booking 1 status: #{booking1.status} (created at #{booking1.created_at})"
puts "Resource 1 available? #{resource1.available?}"

begin
  puts "Trying conflicting booking for User 2..."
  booking2 = Booking.new(user: user2, resource: resource1)
rescue BookingError => e
  puts "Expected conflict error: #{e.message}"
end


puts "Cancelling booking 1..."
booking1.cancel
puts "Booking 1 status after cancel: #{booking1.status}"
puts "Resource 1 available after cancel? #{resource1.available?}"