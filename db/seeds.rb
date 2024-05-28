# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# property = Property.new(
#   property_type: "Venta",
#   price: 1500000,
#   currency: "USD",
#   commune: "Santiago",
#   address: "camino el chin 124",
#   area: 120,
#   bedrooms: 3,
#   bathrooms: 2,
#   latitude: -33.4489,
#   longitude: -70.6693,
#   description: "Una hermosa propiedad ubicada en el corazon de la ciudad"
# )

# # Adjuntar una foto
# property.photos.attach(
#   io: File.open('C:\Users\Victus\OneDrive\Escritorio\dataprop\propdata\app\assets\images\casa_1.jpg'),
#   filename: 'casa_1.jpg',
#   content_type: 'image/jpg'
# )

# if property.save
#   puts "Property saved successfully!"
# else
#   puts "Failed to save property:"
#   puts property.errors.full_messages
# end
