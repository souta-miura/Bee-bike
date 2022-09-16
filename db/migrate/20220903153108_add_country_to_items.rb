class AddCountryToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :country, :string
  end
  
  def change
  end
end
