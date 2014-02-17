class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :iditem
      t.string :nombreitem
      t.string :descripcionitem
      t.string :color
      t.float :valor

      t.timestamps
    end
  end
end
