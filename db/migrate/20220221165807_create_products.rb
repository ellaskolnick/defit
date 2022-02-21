class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.text :description
      t.float :price
      t.string :size
      t.boolean :rented

      t.timestamps
    end
  end
end
