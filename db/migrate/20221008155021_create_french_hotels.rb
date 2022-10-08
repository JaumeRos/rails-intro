class CreateFrenchHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :french_hotels do |t|
      t.string :name
      t.string :address
      t.references :FrenchCity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
