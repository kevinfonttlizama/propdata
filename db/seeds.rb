# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# DB SEEEEEEDS ONLY FOR EXAMPLE PROJECT





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

# Disable the validation temporarily
# property2 = Property.new(
#   property_type: "Venta",
#   price: 1833621650,
#   currency: "CLP",
#   commune: "Lo barnechea (La Dehesa)",
#   address: "camino el chin 124",
#   area: 420,
#   bedrooms: 3,
#   bathrooms: 2,
#   latitude: -33.349389,
#   longitude: -70.541530,
#   description: "Una hermosa propiedad ubicada en el en los barrios mas exclusivos de La Dehesa"
# )

# # Adjuntar una foto
# property2.photos.attach(
#   io: File.open(Rails.root.join('app/assets/images/casa_5.jpg')),
#   filename: 'casa_5.jpg',
#   content_type: 'image/jpg'
# )

# if property2.save
#   puts "Property saved successfully!"
# else
#   puts "Failed to save property:"
#   puts property2.errors.full_messages
# end


# property3 = Property.new(
#   property_type: "Venta",
#   price: 441566030,
#   currency: "CLP",
#   commune: "peñalolen",
#   address: "Peñalolén Avenida Consistorial 2770",
#   area: 400,
#   bedrooms: 4,
#   bathrooms: 3,
#   latitude: -33.490359,
#   longitude: --70.555948,
#   description: "casa bonita en peñalolen a la venta con un excelente precio. Oportunidad unica"
# )

# # Adjuntar una foto
# property3.photos.attach(
#   io: File.open(Rails.root.join('app/assets/images/casa_5.jpg')),
#   filename: 'casa_5.jpg',
#   content_type: 'image/jpg'
# )

# if property3.save
#   puts "Property saved successfully!"
# else
#   puts "Failed to save property:"
#   puts property3.errors.full_messages
# end
