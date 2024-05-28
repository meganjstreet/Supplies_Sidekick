class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.integer :amount
      t.string :details
      t.string :status, default: "pending"
      t.references :user, null: false, foreign_key: true
      t.references :supply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
