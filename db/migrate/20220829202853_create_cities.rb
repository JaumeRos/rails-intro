class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.text :name

      t.timestamps
    end
  end
end
