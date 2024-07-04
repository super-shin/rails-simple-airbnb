# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
seed_flats = [{ name: 'Light & Spacious Garden Flat London',
                address: '10 Clifton Gardens London W9 1DT',
                description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
                price_per_night: 75,
                number_of_guests: 3 },
              { name: 'Light & Spacious Garden Flat Japan',
                address: '10 Tokyo Japan 313-4040',
                description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
                price_per_night: 78,
                number_of_guests: 4 },
              { name: 'Light & Spacious Garden Flat Paris',
                address: '10 Clifton Gardens Paris W9 1DT',
                description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
                price_per_night: 85,
                number_of_guests: 2 },
              { name: 'Light & Spacious Garden Flat Hawaii',
                address: '10 Clifton Rook Hawaii W9 1DT',
                description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
                price_per_night: 79,
                number_of_guests: 1 }]

seed_flats.each { |seed| Flat.create!(seed) }
