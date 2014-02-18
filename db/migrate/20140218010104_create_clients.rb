class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :user
      t.string :passw
      t.string :nombre
      t.string :apellido
      t.date :birthday
      t.string :direccion

      t.timestamps
    end
  end
end
