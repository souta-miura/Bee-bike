class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :shipping
      t.integer :billing_amount
      t.integer :payment_method, default: 0
      t.string :name
      t.text :address
      t.string :postal_code

      t.timestamps
    end
  end
end
