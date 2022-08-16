class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :exhaust_class, default: 0
      t.string :maker

      t.timestamps
    end
  end
end
