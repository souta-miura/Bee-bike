class AddCcToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :cc, :integer
  end
end
