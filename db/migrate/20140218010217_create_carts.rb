class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :numitem
      t.float :total
      t.boolean :purchased

      t.timestamps
    end
  end
end
