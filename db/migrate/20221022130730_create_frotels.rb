class CreateFrotels < ActiveRecord::Migration[7.0]
  def change
    create_table :frotels do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.references :french_city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
