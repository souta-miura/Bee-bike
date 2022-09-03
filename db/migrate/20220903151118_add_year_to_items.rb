class AddYearToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :year, :integer
  end
end
