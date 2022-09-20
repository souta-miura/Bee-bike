class AddColorToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :color, :string
  end
end
