class DropFrenchTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :french_hotels
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
