class AddImgUrlToSupplies < ActiveRecord::Migration[7.1]
  def change
    add_column :supplies, :img_url, :string
  end
end
