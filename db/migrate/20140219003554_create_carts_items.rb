class CreateCartsItems < ActiveRecord::Migration
  def change
    create_table :carts_items, :id => false do |t|
		t.integer :cart_id
		t.integer :item_id
	end
	
	add_index :carts_items, :cart_id
	add_index :carts_items, :item_id
	
	remove_column :carts, :items
  end
end
