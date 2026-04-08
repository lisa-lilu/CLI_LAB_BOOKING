# CLI Lab Booking System

A simple command-line application built with Ruby that models a lab resource booking system. This project focuses on core backend concepts such as object-oriented design, business rules, and error handling.


## Overview

This system allows users to reserve lab resources (e.g., microscopes, laptops). It enforces key rules such as preventing double bookings and updating availability when a booking is cancelled.


## Features

* Create and manage users
* Create and manage resources
* Book available resources
* Prevent double booking of resources
* Cancel bookings
* Automatically update resource availability
* Handle invalid operations with clear error messages


## Project Structure

```bash
lab_booking/
│
├── app.rb              # Main demo script
├── user.rb             # User class
├── resource.rb         # Resource class
├── booking.rb          # Booking logic
├── errors.rb           # Custom error handling
│
└── test/
    └── test_booking.rb # Minitest test cases
```


## Requirements

* Ruby (>= 3.x recommended)
* Minitest (included with Ruby)


## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/lab-booking.git
cd lab-booking
```

### 2. Run the application

```bash
ruby app.rb
```


## Running Tests

```bash
ruby test/test_booking.rb
```



## Example Workflow

1. Create users and resources
2. Make a booking → status becomes active
3. Attempt duplicate booking → raises error
4. Cancel booking → status becomes cancelled
5. Resource becomes available again


## Key Concepts

* Object-Oriented Programming (OOP)
* Class design and relationships
* Business rule enforcement
* Exception handling
* Unit testing with Minitest


## Error Handling

The system raises errors for invalid actions such as:

* Booking an already reserved resource
* Performing operations on invalid states


## Future Improvements

* Add user roles (student, assistant)
* Implement a Booking Manager
* Add time-based booking (start/end time)
* Build an interactive CLI menu
* Persist data (file or database)


## Author

Lielt Leul


## License

This project is for educational purposes.

