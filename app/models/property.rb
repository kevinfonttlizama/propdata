class Property < ApplicationRecord
  belongs_to :user, optional: true
  has_many_attached :photos

  validates :property_type, presence: true, inclusion: { in: %w[Arriendo Venta] }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :currency, presence: true, inclusion: { in: %w[USD CLP] }
  validates :commune, presence: true
  validates :address, presence: true
  validates :area, presence: true, numericality: { greater_than: 0 }
  validates :bedrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :bathrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true
  validates :description, presence: true, format: { without: /\b[\w\-.]+@[a-z\d\-.]+\.[a-z]+\b|\b\d{3}[-.\s]?\d{3}[-.\s]?\d{4}\b|\bhttps?:\/\/[^\s]+\b|\d/i, message: "no debe contener datos de contacto (EMAIL, URLS, NÚMEROS DE TELÉFONO) ni números" }

  validate :must_have_at_least_one_photo, on: :create

  private

  def must_have_at_least_one_photo
    errors.add(:photos, "debe tener al menos una foto") unless photos.attached?
  end

  def usd_to_clp_rate
    url = 'https://mindicador.cl/api'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data['dolar']['valor']
  rescue
    nil
  end

  public

  def price_in_usd
    return price if currency == 'USD'
    rate = usd_to_clp_rate
    rate ? price / rate : "Rate not available"
  end

  def price_in_clp 
    return price if currency == 'CLP'
    rate = usd_to_clp_rate
    rate ? price * rate : "Rate not available"
  end 
end
