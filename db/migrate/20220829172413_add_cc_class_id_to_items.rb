class AddCcClassIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :cc_class_id, :integer
  end
  
  def change
  end
end
