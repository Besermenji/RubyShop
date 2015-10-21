class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :quantity
      t.float :price
      t.belongs_to :category
      t.timestamps null: false
    end
  end
end
