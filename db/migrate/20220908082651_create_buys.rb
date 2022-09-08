class CreateBuys < ActiveRecord::Migration[6.1]
  def change
    create_table :buys do |t|
      t.string :address
      t.integer :pin_code
      t.integer :phone_number
      t.integer :card_number
      t.integer :cvv
      t.integer :exp_date
      t.string  :cod

      t.timestamps
    end
  end
end
