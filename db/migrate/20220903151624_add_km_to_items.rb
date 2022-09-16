class AddKmToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :km, :integer
  end
  
  def change
  end
end
