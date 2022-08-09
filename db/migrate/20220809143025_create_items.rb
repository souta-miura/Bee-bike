class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :price
      t.integer :sale_method, default: 0
      t.integer :sale_status, default: 0

      t.timestamps
    end
  end
end
