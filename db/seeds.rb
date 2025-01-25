# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create Users
User.create!(
  username: 'john_doe',
  email: 'john_doe@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'John',
  last_name: 'Doe',
  bio: 'Just a regular John Doe.',
  profile_picture: 'https://example.com/john_doe.jpg'
)

User.create!(
  username: 'jane_doe',
  email: 'jane_doe@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Jane',
  last_name: 'Doe',
  bio: 'Just a regular Jane Doe.',
  profile_picture: 'https://example.com/jane_doe.jpg'
)

User.create!(
  username: 'alice_smith',
  email: 'alice_smith@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Alice',
  last_name: 'Smith',
  bio: 'Alice in Wonderland.',
  profile_picture: 'https://example.com/alice_smith.jpg'
)