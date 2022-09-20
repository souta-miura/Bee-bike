class CreateItemComments < ActiveRecord::Migration[6.1]
  def change
    create_table :item_comments do |t|
      t.integer :user_id
      t.integer :item_id
      t.text :item_comment

      t.timestamps
    end
  end
end
