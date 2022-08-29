class RemoveExhaustClassFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :exhaust_class, :integer
  end
end
