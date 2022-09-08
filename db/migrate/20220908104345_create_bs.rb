class CreateBs < ActiveRecord::Migration[6.1]
  def change
    create_table :bs do |t|
      t.string :address
      t.string :cod
      t.integer :phone_no
      t.integer :card_number
      t.integer :cvv
      t.string :exp_date

      t.timestamps
    end
  end
end
