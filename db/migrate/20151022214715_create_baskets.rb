class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.integer :product_id
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
