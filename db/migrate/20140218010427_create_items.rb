class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :code
      t.string :nombreitem
      t.string :descripcion
      t.string :color
      t.float :valor

      t.timestamps
    end
  end
end
