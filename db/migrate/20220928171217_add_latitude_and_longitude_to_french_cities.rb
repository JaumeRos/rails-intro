class AddLatitudeAndLongitudeToFrenchCities < ActiveRecord::Migration[7.0]
  def change
    add_column :french_cities, :latitude, :float
    add_column :french_cities, :longitude, :float
  end
end
