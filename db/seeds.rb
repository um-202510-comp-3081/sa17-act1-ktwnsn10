# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
BoardGame.destroy_all

BoardGame.create!([
  {
    title: "Catan",
    category: "Strategy",
    min_players: 3,
    max_players: 4,
    publisher: "Catan Studio",
    description: "Build settlements, cities, and roads on the island of Catan while trading resources with other players."
  },
  {
    title: "Ticket to Ride",
    category: "Family",
    min_players: 2,
    max_players: 5,
    publisher: "Days of Wonder",
    description: "Collect train cards to claim railway routes connecting cities across North America."
  },
  {
    title: "Pandemic",
    category: "Cooperative",
    min_players: 2,
    max_players: 4,
    publisher: "Z-Man Games",
    description: "Work together as a team to treat infections around the world while gathering resources for cures."
  },
  {
    title: "Codenames",
    category: "Party",
    min_players: 2,
    max_players: 8,
    publisher: "Czech Games Edition",
    description: "Give one-word clues that can point to multiple words on the board to help your team find all your agents."
  },
  {
    title: "Azul",
    category: "Abstract",
    min_players: 2,
    max_players: 4,
    publisher: "Next Move Games",
    description: "Compete to build the most beautiful mosaic by drafting colorful tiles to place on your player board."
  }
])

puts "Created #{BoardGame.count} board games"