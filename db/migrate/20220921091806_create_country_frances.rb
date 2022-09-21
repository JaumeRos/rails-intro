class CreateCountryFrances < ActiveRecord::Migration[7.0]
  def change
    create_table :country_frances do |t|
      t.string :name
      t.references :french_cities, null: false, foreign_key: true

      t.timestamps
    end
  end
end
