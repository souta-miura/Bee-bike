class AddMakerIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :maker_id, :integer
  end
  
  def change
  end
end
