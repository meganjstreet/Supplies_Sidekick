class AddCoordinatesToSupply < ActiveRecord::Migration[7.1]
  def change
    add_column :supplies, :latitude, :float
    add_column :supplies, :longitude, :float
  end
end
