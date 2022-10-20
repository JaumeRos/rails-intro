class AddFrenchHotelToFrenchCity < ActiveRecord::Migration[7.0]
  def change
    # add_reference :french_cities, :french_hotels, null: false, foreign_key: true
  end
end
