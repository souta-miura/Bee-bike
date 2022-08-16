class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :name
      t.text :address
      t.string :postal_code

      t.timestamps
    end
  end
end
