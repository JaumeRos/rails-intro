class AddHotelsToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :hotels, :string
  end
end
