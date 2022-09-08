class CreateBuynows < ActiveRecord::Migration[6.1]
  def change
    create_table :buynows do |t|
      t.string :address
      t.integer :pin_code
      t.integer :phone_number

      t.timestamps
    end
  end
end
