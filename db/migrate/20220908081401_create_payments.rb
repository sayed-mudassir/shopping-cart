class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :card_number
      t.string :cvv
      t.string :exp_date
      t.belongs_to :buynow, null: false, foreign_key: true

      t.timestamps
    end
  end
end
