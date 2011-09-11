class Poi
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :latitude, :longitude, :gmaps, :address, :zip, :city, :country
 
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end

  def gmaps4rails_address
      "#{self.address}, #{self.zip} #{self.city}, #{self.country}"
  end

end