class AddSlugToFrenchCities < ActiveRecord::Migration[7.0]
  def change
    add_column :french_cities, :slug, :string
    add_index :french_cities, :slug, unique: true
  end
end
